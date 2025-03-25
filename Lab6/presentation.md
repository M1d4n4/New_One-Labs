# Презентация: Алгоритм Полларда-ро

## Введение
Алгоритм Полларда-ро — это вероятностный метод для разложения чисел на множители.
![image](https://github.com/user-attachments/assets/ab599d2f-d4f0-41f4-b514-1f237b1fe577)

## Реализация
![image](https://github.com/user-attachments/assets/6c0671a5-43c6-4e94-88d3-24541d61f165)


## Пример
![image](https://github.com/user-attachments/assets/58956284-4209-47db-b333-1b2f759c5e90)


## Заключение
Алгоритм Полларда-ро эффективен для работы с большими числами.

Конвертируйте презентацию в HTML:
pandoc presentation.md -o presentation.html --slide-level=2 -t revealjs

Конвертируйте презентацию в PDF:
pandoc presentation.md -o presentation.pdf --slide-level=2 -t beamer

Создание релиза
git tag v1.0
git push origin v1.0
