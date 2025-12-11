const express = require('express');
const fs = require('fs/promises'); // Используем fs.promises для асинхронных операций
const path = require('path');
const app = express();
const PORT = 3000;

const DB_PATH = path.join(__dirname, 'db.json');

// Middleware для обработки JSON в теле запроса и CORS
app.use(express.json());
app.use((req, res, next) => {
    res.setHeader('Access-Control-Allow-Origin', '*'); // Разрешаем запросы с любого домена (для разработки)
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
    next();
});

// --- Функции для работы с "Базой Данных" (db.json) ---

async function readDB() {
    try {
        const data = await fs.readFile(DB_PATH, 'utf8');
        return JSON.parse(data);
    } catch (error) {
        // Если файла нет или он пуст, возвращаем пустую структуру
        if (error.code === 'ENOENT') {
            console.log("DB file not found, creating new structure.");
            return { users: [], emails: [] };
        }
        throw error;
    }
}

async function writeDB(data) {
    await fs.writeFile(DB_PATH, JSON.stringify(data, null, 2), 'utf8');
}

// --- API Эндпоинты ---

// 1. Регистрация нового пользователя
app.post('/api/register', async (req, res) => {
    const { username, password } = req.body;
    if (!username || !password) {
        return res.status(400).json({ message: 'Требуется имя пользователя и пароль.' });
    }

    const db = await readDB();
    if (db.users.find(u => u.username === username)) {
        return res.status(409).json({ message: 'Пользователь с таким именем уже существует.' });
    }

    const newUser = { username, password }; // В реальном проекте здесь нужно хэшировать пароль!
    db.users.push(newUser);
    await writeDB(db);

    res.status(201).json({ message: 'Регистрация прошла успешно!', user: { username: newUser.username } });
});

// 2. Вход пользователя (для получения "сессии" - просто имени пользователя)
app.post('/api/login', async (req, res) => {
    const { username, password } = req.body;
    const db = await readDB();
    const user = db.users.find(u => u.username === username && u.password === password); // Небезопасная проверка!

    if (user) {
        // В реальном приложении здесь выдается JWT или сессия
        res.status(200).json({ message: 'Вход успешен', username: user.username });
    } else {
        res.status(401).json({ message: 'Неверное имя пользователя или пароль.' });
    }
});

// 3. Сохранение письма
app.post('/api/save-email', async (req, res) => {
    const { username, letterText, type } = req.body;
    if (!username || !letterText || !type) {
        return res.status(400).json({ message: 'Отсутствуют данные письма или имя пользователя.' });
    }

    const db = await readDB();
    // Проверка, что пользователь существует (имитация авторизации)
    if (!db.users.find(u => u.username === username)) {
        return res.status(403).json({ message: 'Пользователь не авторизован.' });
    }

    const newEmail = {
        id: Date.now(),
        username: username,
        type: type,
        content: letterText,
        date: new Date().toISOString()
    };

    db.emails.push(newEmail);
    await writeDB(db);

    res.status(200).json({ message: 'Письмо успешно сохранено!', email: newEmail });
});

// 4. Получение сохраненных писем пользователя
app.get('/api/get-emails/:username', async (req, res) => {
    const username = req.params.username;
    const db = await readDB();

    const userEmails = db.emails.filter(e => e.username === username);
    res.status(200).json({ emails: userEmails });
});


// Запуск сервера
app.listen(PORT, () => {
    console.log(`Сервер запущен на http://localhost:${PORT}`);
    console.log("ВНИМАНИЕ: Это небезопасный демонстрационный код! Пароли не хэшируются.");
});