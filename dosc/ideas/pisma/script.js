const API_URL = 'http://localhost:3000/api';
let currentUsername = null; // Для отслеживания текущего авторизованного пользователя

// --- Управление UI и Состоянием ---

function updateUI() {
    const controls = document.querySelector('.controls');
    const authArea = document.querySelector('.auth-area');
    const authStatus = document.getElementById('authStatus');
    const savedEmailsArea = document.querySelector('.saved-emails-area');

    if (currentUsername) {
        authStatus.textContent = `Добро пожаловать, ${currentUsername}!`;
        authArea.style.display = 'none';
        controls.style.display = 'block';
        savedEmailsArea.style.display = 'block';
        loadSavedEmails();
    } else {
        authStatus.textContent = 'Вы не авторизованы.';
        authArea.style.display = 'block';
        controls.style.display = 'none';
        savedEmailsArea.style.display = 'none';
    }
}

// Функция для обновления плейсхолдеров
function updatePlaceholders() {
    // ... (Оставьте эту функцию из предыдущего примера без изменений) ...
    const type = document.getElementById('typeSelect').value;
    const input1 = document.getElementById('input1');
    const input2 = document.getElementById('input2');

    if (type === 'business') {
        input1.placeholder = "Имя Получателя / Название Компании";
        input2.placeholder = "Тема письма (Запрос/Предложение/Жалоба)";
    } else if (type === 'friend') {
        input1.placeholder = "Имя Друга";
        input2.placeholder = "Цель письма (Позвать/Рассказать новости)";
    } else if (type === 'congratulation') {
        input1.placeholder = "Имя Поздравляемого";
        input2.placeholder = "Повод (День Рождения, Юбилей)";
    }
}

document.getElementById('typeSelect').addEventListener('change', updatePlaceholders);
updatePlaceholders(); 
updateUI(); // Инициализация UI при загрузке


// --- Аутентификация ---

async function registerUser() {
    const username = document.getElementById('authUsername').value;
    const password = document.getElementById('authPassword').value;

    try {
        const response = await fetch(`${API_URL}/register`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ username, password })
        });
        const data = await response.json();
        alert(data.message);
    } catch (error) {
        alert('Ошибка регистрации: ' + error.message);
    }
}

async function loginUser() {
    const username = document.getElementById('authUsername').value;
    const password = document.getElementById('authPassword').value;

    try {
        const response = await fetch(`${API_URL}/login`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ username, password })
        });
        const data = await response.json();
        
        if (response.ok) {
            currentUsername = data.username;
            updateUI();
        } else {
            alert('Ошибка входа: ' + data.message);
        }
    } catch (error) {
        alert('Ошибка сети при входе: ' + error.message);
    }
}


// --- Генерация и Сохранение ---

function generateLetter() {
    // ... (Оставьте эту функцию генерации из предыдущего примера без изменений) ...
    const type = document.getElementById('typeSelect').value;
    const value1 = document.getElementById('input1').value.trim();
    const value2 = document.getElementById('input2').value.trim();
    const outputArea = document.getElementById('outputLetter');
    let letterText = "";

    if (!value1 || !value2) {
        outputArea.value = "Пожалуйста, заполните оба поля!";
        return;
    }

    if (type === 'business') {
        letterText = `Уважаемый(ая) ${value1},\n\n` +
                     `Настоящим письмом обращаемся к Вам по вопросу: ${value2}.\n\n` +
                     `[ВСТАВЬТЕ ЗДЕСЬ ДЕТАЛИ ЗАПРОСА/ПРЕДЛОЖЕНИЯ. Сохраняйте официальный тон.]\n\n` +
                     `Будем благодарны за оперативный ответ и надеемся на взаимовыгодное сотрудничество.\n\n` +
                     `С уважением,\n[Ваше Имя/Название Компании]`;
    } else if (type === 'friend') {
        letterText = `Привет, ${value1}!\n\n` +
                     `Как ты? Пишу тебе, чтобы ${value2}.\n\n` +
                     `[ВСТАВЬТЕ ЛИЧНОЕ СООБЩЕНИЕ ИЛИ ПЛАНЫ. Можно добавить эмодзи!]\n\n` +
                     `Надеюсь, скоро увидимся и обсудим все подробно.\n\n` +
                     `Обнимаю,\n[Ваше Имя]`;
    } else if (type === 'congratulation') {
        letterText = `Дорогой(ая) ${value1}!\n\n` +
                     `Поздравляю тебя с ${value2}!\n\n` +
                     `От всего сердца желаю тебе [ЗДЕСЬ ДОБАВЬТЕ СВОИ ЛУЧШИЕ ПОЖЕЛАНИЯ: здоровья, счастья, успехов в начинаниях].\n\n` +
                     `Пусть все твои мечты сбываются!\n\n` +
                     `Твой(Твоя),\n[Ваше Имя]`;
    }

    outputArea.value = letterText;
    
    // После генерации предлагаем сохранить
    if (currentUsername) {
        if (confirm("Письмо сгенерировано. Хотите сохранить его?")) {
            saveGeneratedEmail(letterText, type);
        }
    }
}

async function saveGeneratedEmail(letterText, type) {
    if (!currentUsername) {
        alert("Пожалуйста, войдите, чтобы сохранить письмо.");
        return;
    }

    try {
        const response = await fetch(`${API_URL}/save-email`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ 
                username: currentUsername, 
                letterText: letterText, 
                type: type 
            })
        });
        const data = await response.json();
        
        if (response.ok) {
            alert(data.message);
            loadSavedEmails(); // Обновляем список сохраненных
        } else {
            alert('Ошибка сохранения: ' + data.message);
        }
    } catch (error) {
        alert('Ошибка сети при сохранении: ' + error.message);
    }
}


// --- Отображение сохраненных писем ---

async function loadSavedEmails() {
    if (!currentUsername) return;
    const listElement = document.getElementById('savedEmailsList');
    listElement.innerHTML = 'Загрузка...';

    try {
        const response = await fetch(`${API_URL}/get-emails/${currentUsername}`);
        const data = await response.json();

        listElement.innerHTML = '';
        if (data.emails && data.emails.length > 0) {
            data.emails.forEach(email => {
                const li = document.createElement('li');
                const date = new Date(email.date).toLocaleDateString();
                
                li.innerHTML = `
                    <strong>Тип:</strong> ${email.type} (от ${date})<br>
                    <pre>${email.content.substring(0, 150)}...</pre>
                `;
                listElement.appendChild(li);
            });
        } else {
            listElement.innerHTML = '<li>У вас пока нет сохраненных писем.</li>';
        }
    } catch (error) {
        listElement.innerHTML = `<li>Ошибка загрузки писем: ${error.message}</li>`;
    }
}


// --- Функции копирования и PDF (без изменений) ---

function copyText() {
    const outputArea = document.getElementById('outputLetter');
    outputArea.select();
    document.execCommand('copy');
    alert('Текст скопирован в буфер обмена!');
}

function exportToPDF() {
    alert("Для полноценного экспорта в PDF в браузере требуется сторонняя JavaScript библиотека (например, jsPDF). Сейчас будет использована функция печати.");
    window.print();
}