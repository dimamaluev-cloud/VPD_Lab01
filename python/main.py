# -*- coding: utf-8 -*-
# Указываем кодировку файла UTF-8, чтобы русские буквы корректно читались

# === Исходные данные студента ===
student_name_ru = "Малуев Дмитрий Сергеевич"   # ФИО на русском
student_name_en = "Maluev Dmitriy Sergeevich"   # ФИО на английском
student_number = 11                             # Номер студента в списке группы
group_name = "М3О-110БВк-26"                    # Название группы
language_name = "Python"                        # Название текущего языка

# Вычисляем контрольное значение: 304 умножить на номер студента
control_value = 304 * student_number            # Должно получиться 3344

# Формируем student_id в формате "группа/номер"
# :02d означает: вывести число минимум двумя цифрами (с ведущим нулём при необходимости)
student_id = f"{group_name}/{student_number:02d}"

# === Вывод первой строки (английское приветствие) ===
# f-строка — удобный способ подставлять переменные прямо в текст
print(f"Hello to 304 from {student_name_en}, number {student_number}, group {group_name}!")

# === Вывод второй строки (русское приветствие) ===
print(f"Привет, 304! Это {student_name_ru}, номер {student_number}, группа {group_name}!")

# === Вывод третьей строки (Student ID + Language + Control) ===
print(f"Student ID: {student_id} | Language: {language_name} | Control: {control_value}")

# === Дополнительное требование методички для Python ===
# Вывести количество слов в английском ФИО
# .split() разбивает строку на слова по пробелам
# len() считает количество элементов в списке
word_count = len(student_name_en.split())
print(f"Word count in English name: {word_count}")