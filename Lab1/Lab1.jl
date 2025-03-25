# Шифр Цезаря с поддержкой русского алфавита
function caesar_cipher(text::String, key::Int; encrypt::Bool=true)
    # Русский алфавит (строчные буквы)
    alphabet = ['а', 'б', 'в', 'г', 'д', 'е', 'ж', 'з', 'и', 'й', 'к', 'л', 'м', 'н', 'о', 
               'п', 'р', 'с', 'т', 'у', 'ф', 'х', 'ц', 'ч', 'ш', 'щ', 'ъ', 'ы', 'ь', 'э', 'ю', 'я']
    alphabet_length = length(alphabet)
    
    # Нормализуем ключ
    key = encrypt ? key % alphabet_length : -key % alphabet_length
    
    # Создаем словарь для замены символов
    cipher_dict = Dict{Char, Char}()
    for (i, char) in enumerate(alphabet)
        new_pos = (i - 1 + key) % alphabet_length + 1
        cipher_dict[char] = alphabet[new_pos]
        
        # Добавляем заглавные буквы
        upper_char = uppercase(char)
        upper_new_char = uppercase(alphabet[new_pos])
        cipher_dict[upper_char] = upper_new_char
    end
    
    # Обрабатываем текст
    result = Char[]
    for char in text
        if lowercase(char) in alphabet
            push!(result, cipher_dict[char])
        else
            push!(result, char) # Оставляем символы не из алфавита без изменений
        end
    end
    
    return join(result)
end

# Шифр Атбаш с поддержкой русского алфавита
function atbash_cipher(text::String)
    # Русский алфавит (строчные буквы)
    alphabet = ['а', 'б', 'в', 'г', 'д', 'е', 'ж', 'з', 'и', 'й', 'к', 'л', 'м', 'н', 'о', 
               'п', 'р', 'с', 'т', 'у', 'ф', 'х', 'ц', 'ч', 'ш', 'щ', 'ъ', 'ы', 'ь', 'э', 'ю', 'я']
    alphabet_length = length(alphabet)
    
    # Создаем словарь для замены символов
    cipher_dict = Dict{Char, Char}()
    for (i, char) in enumerate(alphabet)
        # Для строчных букв
        cipher_dict[char] = alphabet[alphabet_length - i + 1]
        
        # Для заглавных букв
        upper_char = uppercase(char)
        upper_mirror_char = uppercase(alphabet[alphabet_length - i + 1])
        cipher_dict[upper_char] = upper_mirror_char
    end
    
    # Обрабатываем текст
    result = Char[]
    for char in text
        if lowercase(char) in alphabet
            push!(result, cipher_dict[char])
        else
            push!(result, char) # Оставляем символы не из алфавита без изменений
        end
    end
    
    return join(result)
end

# Функция для демонстрации работы шифров
function demo_ciphers()
    println("Демонстрация работы шифров:")
    println("="^50)
    
    # Пример для шифра Цезаря
    original_text = "Привет, мир!"
    key = 5
    
    println("\nШифр Цезаря:")
    println("Исходный текст: ", original_text)
    println("Ключ: ", key)
    
    encrypted = caesar_cipher(original_text, key)
    println("Зашифрованный текст: ", encrypted)
    
    
    # Пример для шифра Атбаш
    original_text_atbash = "Пример шифра Атбаш"
    
    println("\nШифр Атбаш:")
    println("Исходный текст: ", original_text_atbash)
    
    encrypted_atbash = atbash_cipher(original_text_atbash)
    println("Зашифрованный текст: ", encrypted_atbash)
    
    decrypted_atbash = atbash_cipher(encrypted_atbash)
    println("Расшифрованный текст: ", decrypted_atbash)
end

# Запускаем демонстрацию
demo_ciphers()