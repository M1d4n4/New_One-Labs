# Презентация: Шифрование методом гаммирования

---

## Введение
- **Цель работы**: Изучение метода гаммирования.
- **Язык программирования**: Julia.

---

## Метод гаммирования
- **Основной принцип**: Сложение числовых значений текста и ключа по модулю.
- **Алфавит**: Русский (33 буквы).
![image](https://github.com/user-attachments/assets/7485ad4d-1dcf-4b8e-83c9-7ac97bddd0d0)

## Реализация
- Преобразование букв в числа.
- Циклическое повторение ключа.
- Сложение по модулю 33.

---

## Пример
- **Исходный текст**: `"ПРИКАЗ"`
- **Ключ**: `"ТАММА"`
- **Результат**: `"БСХЧБЪ"`

![image](https://github.com/user-attachments/assets/a5497dc5-67ad-46ae-bd29-f03c4ab4415c)


## Заключение
- Алгоритм успешно реализован.
- Возможности расширения: поддержка других алфавитов, интерфейс пользователя.

Генерация отчёта
### Отчёт в DOCX
pandoc README.md -o release/report.docx

### Отчёт в PDF
pandoc README.md -o release/report.pdf --pdf-engine=xelatex

Генерация презентации

### Презентация в HTML
pandoc presentation.md -o release/presentation.html --slide-level=2

### Презентация в PDF
pandoc presentation.md -o release/presentation.pdf --pdf-engine=xelatex --slide-level=2

### Релиз в Git
git add .
git commit -m "Добавлены отчёт, презентация и исходные материалы"
git tag v1.0
git push origin main --tags
