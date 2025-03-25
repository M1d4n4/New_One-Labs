# Презентация: Дискретный логарифм методом Полларда

---

## Введение
- Задача: Найти $ x $, такое что $ a^x \equiv b \pmod{p} $.
- Метод: Алгоритм Полларда.

![image](https://github.com/user-attachments/assets/8d28eba2-4948-43dc-822a-60fc2cfb8fe2)


## Результаты
- Для $ p = 107 $, $ a = 10 $, $ b = 64 $:
  - Решение: $ x = 13 $.

![image](https://github.com/user-attachments/assets/a4be542a-95c4-411a-abdd-bbb9f1841fd2)


## Заключение
- Алгоритм эффективен для небольших чисел.
- Возможны улучшения для больших чисел.

Конвертация в PDF
pandoc presentation/presentation.md -o presentation/presentation.pdf --pdf-engine=xelatex

Конвертация в HTML
pandoc presentation/presentation.md -o presentation/presentation.html --self-contained
