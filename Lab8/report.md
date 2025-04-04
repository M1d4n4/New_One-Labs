# Отчёт по реализации арифметических операций

## Введение

В данном проекте реализованы базовые арифметические операции (сложение, вычитание, умножение) для чисел, представленных в виде массивов цифр в заданной системе счисления $ b $. Операции реализованы на языке Julia.

## Реализованные функции

1. **Сложение (`add_numbers`)**:
   - Выполняет сложение "столбиком" с учётом переноса.
   - Удаляет ведущие нули из результата.

2. **Вычитание (`subtract_numbers`)**:
   - Выполняет вычитание "столбиком" с учётом заема.
   - Предполагается, что $ u \geq v $.

3. **Умножение столбиком (`multiply_numbers`)**:
   - Реализует умножение "столбиком" с учётом переноса.

4. **Быстрое умножение (`fast_multiply`)**:
   - Реализует оптимизированный алгоритм умножения.

## Пример использования

```julia
u = number_to_digits(243, 10)  # [3,4,2] (обратный порядок)
v = number_to_digits(99, 10)   # [9,9]

w_add = add_numbers(u, v, 10)
println("Сложение: ", digits_to_number(w_add, 10))  # 342

w_sub = subtract_numbers(u, v, 10)
println("Вычитание: ", digits_to_number(w_sub, 10))  # 144

w_mul = multiply_numbers(u, v, 10)
println("Умножение (столбиком): ", digits_to_number(w_mul, 10))  # 24057

w_fast_mul = fast_multiply(u, v, 10)
println("Быстрое умножение: ", digits_to_number(w_fast_mul, 10))  # 24057

Заключение
Реализованные функции корректно выполняют все заявленные операции. 
Код может быть расширен для поддержки отрицательных чисел и оптимизации алгоритмов.

Конвертация в PDF:

pandoc README.md -o release/report.pdf --pdf-engine=xelatex

Конвертируйте в HTML и PDF:

pandoc presentation.md -o release/presentation.html

pandoc presentation.md -o release/presentation.pdf --pdf-engine=xelatex
