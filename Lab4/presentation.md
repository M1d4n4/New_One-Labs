# Презентация: Алгоритмы Евклида

## Слайд 1: Введение
- Цель работы: изучение алгоритмов Евклида.
- Числа для теста: `a = 12345`, `b = 24690`.

## Слайд 2: Классический алгоритм Евклида
- Основная идея: последовательное деление с остатком.
![image](https://github.com/user-attachments/assets/7a411bb2-749c-46b4-a7d1-b438f8a887f9)

- Результат: НОД = **12345**.

## Слайд 3: Расширенный алгоритм Евклида
- Дополнительно находятся коэффициенты Безу.
![image](https://github.com/user-attachments/assets/8c5274b8-2761-434c-b2ef-13d8ce179d7e)

- Результат: НОД = **12345**, `x = 1`, `y = -1`.

## Слайд 4: Бинарный алгоритм Евклида
- Использует свойства четных и нечетных чисел.
- ![image](https://github.com/user-attachments/assets/524df4fc-d4e0-41df-b779-cc125022ed4a)

- Результат: НОД = **12345**.

## Слайд 5: Расширенный бинарный алгоритм Евклида
- Аналогично предыдущему, но с коэффициентами Безу.
- ![image](https://github.com/user-attachments/assets/3acb4545-ac63-4485-ae5e-56814c79fb23)

- Результат: НОД = **12345**, `x = 1`, `y = -1`.

## Слайд 6: Заключение

- Все алгоритмы дают одинаковый результат.
- Выбор алгоритма зависит от задачи и требований к производительности.

## Презентация в PDF и HTML
#### Конвертация в PDF
pandoc presentation.md -o presentation.pdf --pdf-engine=xelatex

#### Конвертация в HTML
pandoc presentation.md -o presentation.html --self-contained

## Размещение материалов
Все файлы в репозиторий Git
git add report.md presentation.md report.docx report.pdf materials.zip presentation.pdf presentation.html
git commit -m "Добавлены отчёты и презентации"
git push
