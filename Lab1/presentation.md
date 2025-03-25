# Презентация: Шифры Цезаря и Атбаш

## Введение
- Реализованы два классических шифра.
- Поддержка русского алфавита.

## Шифр Цезаря
- Описание метода.
- Пример:
  ```julia
  caesar_cipher("Привет, мир!", 5) -> "Ухншйч, рнх!"

![image](https://github.com/user-attachments/assets/4b0af7e5-7740-48c5-a7ee-5720a933e8ad)


##  Шифр Атбаш 
Описание метода.

atbash_cipher("Пример шифра Атбаш") -> "Пирерм шурпя Ягэша"

![image](https://github.com/user-attachments/assets/4c9c1e96-af5f-482c-9dc7-864f74ac801f)


Заключение
Проект завершён.
Код доступен на GitHub.


### **3.2. Конвертация в другие форматы**
Используйте `Pandoc` с шаблоном для презентаций:

#### **PDF**
```bash
pandoc presentation/presentation.md --pdf-engine=pdflatex -o presentation/output/presentation.pdf

HTML
pandoc presentation/presentation.md -t revealjs -o presentation/output/presentation.html

Публикация в Git

git init
git add .
git commit -m "Добавлены отчёт, презентация и архив с исходными материалами"
git remote add origin <URL_вашего_репозитория>
git push -u origin main
