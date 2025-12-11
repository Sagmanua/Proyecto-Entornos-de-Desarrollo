// 1. Определение набора цветовых палитр
// Вы можете расширить этот список для более сложных стилей
const PALETTES = {
    calm: [
        ['#A3B18A', '#588157', '#3A5A40', '#DAD7CD', '#E8E8E4'], // Зеленый, спокойный
        ['#CAD2C5', '#84A98C', '#52796F', '#354F52', '#2F3E46']  // Приглушенные тона
    ],
    vibrant: [
        ['#FF6B6B', '#FFD166', '#06D6A0', '#118AB2', '#073B4C'], // Контрастный, яркий
        ['#F08080', '#FFC0CB', '#9370DB', '#00CED1', '#FFA07A']  // Пастельно-яркий
    ],
    professional: [
        ['#003049', '#D62828', '#F77F00', '#FCBF49', '#EAE2B7'], // Классический, строгий
        ['#343A40', '#495057', '#DEE2E6', '#ADB5BD', '#6C757D']  // Серые и темные тона
    ],
    vintage: [
        ['#A77979', '#DBC3A0', '#E7E5E5', '#A29587', '#735C5C'], // Землистые, старые
        ['#B49D65', '#8A6D47', '#D4C69F', '#EAE6DA', '#655A46']  // Коричневые, приглушенные
    ],
    dark: [
        ['#1A1A1D', '#4E4E50', '#6F2232', '#950740', '#C3073A'], // Темный, драматичный
        ['#222222', '#444444', '#666666', '#888888', '#AAAAAA']  // Оттенки серого
    ]
};

// Вспомогательная функция для определения, темный ли цвет
function isColorDark(hex) {
    const r = parseInt(hex.substring(1, 3), 16);
    const g = parseInt(hex.substring(3, 5), 16);
    const b = parseInt(hex.substring(5, 7), 16);
    // Формула для яркости (люма)
    const brightness = (r * 299 + g * 587 + b * 114) / 1000;
    return brightness < 128; // Считаем темным, если яркость ниже 128 (из 255)
}

// 2. Функция генерации и отображения палитры
function generatePalette() {
    const style = document.getElementById('style-select').value;
    const stylePalettes = PALETTES[style];

    if (!stylePalettes || stylePalettes.length === 0) {
        alert('Палитры для выбранного стиля не найдены.');
        return;
    }

    // Случайный выбор одной палитры из набора для стиля
    const randomIndex = Math.floor(Math.random() * stylePalettes.length);
    const selectedPalette = stylePalettes[randomIndex];

    const container = document.getElementById('palette-container');
    const colorSwatches = container.querySelectorAll('.color-swatch');

    selectedPalette.forEach((hex, index) => {
        if (colorSwatches[index]) {
            const swatch = colorSwatches[index];
            swatch.style.backgroundColor = hex;
            swatch.textContent = hex;
            swatch.dataset.color = hex; // Сохраняем цвет для экспорта

            // Установка цвета текста в зависимости от яркости фона
            swatch.style.color = isColorDark(hex) ? '#FFFFFF' : '#000000';
        }
    });
}

// 3. Функции экспорта

// Получает текущую палитру в виде массива HEX-кодов
function getCurrentPalette() {
    const container = document.getElementById('palette-container');
    const colorSwatches = container.querySelectorAll('.color-swatch');
    const palette = [];
    colorSwatches.forEach(swatch => {
        palette.push(swatch.dataset.color);
    });
    return palette;
}

// Экспорт в CSS
function exportToCSS() {
    const palette = getCurrentPalette();
    const style = document.getElementById('style-select').value;

    let cssCode = `:root {\n`;
    palette.forEach((color, index) => {
        // Создаем CSS-переменную, например: --color-primary-1: #XXXXXX;
        cssCode += `  --palette-${style}-${index + 1}: ${color};\n`;
    });
    cssCode += `}`;

    // Копирование в буфер обмена
    navigator.clipboard.writeText(cssCode).then(() => {
        alert('CSS переменные скопированы в буфер обмена:\n\n' + cssCode);
    }).catch(err => {
        console.error('Ошибка копирования:', err);
        alert('Не удалось скопировать. Проверьте консоль.');
    });
}

// Экспорт в PNG
function exportToPNG() {
    // Для экспорта в PNG потребуется библиотека, например, html2canvas,
    // поскольку прямое создание изображений из DOM сложнее.
    // Для простоты, здесь мы используем alert, но для реального проекта
    // вам нужно будет подключить библиотеку.
    
    // **Реальное решение требует библиотеки типа html2canvas**
    
    alert('Для экспорта в PNG необходимо подключить дополнительную библиотеку (например, html2canvas). Для демонстрации, мы скопируем HEX-коды:\n\n' + getCurrentPalette().join(', '));
    
    /*
    // Если бы вы использовали html2canvas:
    const container = document.getElementById('palette-container');
    html2canvas(container).then(canvas => {
        const imageURL = canvas.toDataURL('image/png');
        const link = document.createElement('a');
        link.href = imageURL;
        link.download = `palette-${document.getElementById('style-select').value}.png`;
        document.body.appendChild(link);
        link.click();
        document.body.removeChild(link);
    });
    */
}


// 4. Инициализация и слушатели событий
document.addEventListener('DOMContentLoaded', () => {
    // Назначаем обработчики событий
    document.getElementById('generate-btn').addEventListener('click', generatePalette);
    document.getElementById('export-css-btn').addEventListener('click', exportToCSS);
    document.getElementById('export-png-btn').addEventListener('click', exportToPNG);

    // Генерируем палитру по умолчанию при загрузке страницы
    generatePalette();
});