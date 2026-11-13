#!/usr/bin/env bash

# Данные студента
student_name_ru="Малуев Дмитрий Сергеевич"
student_name_en="Maluev Dmitriy Sergeevich"
student_number=11
group_name="M3O-110BVk-26"
language_name="Bash"

# Создаём идентификатор студента.
# printf позволяет добавить ноль перед номером.
student_id=$(printf "%s/%02d" "$group_name" "$student_number")

# Вычисляем контрольное значение.
control_value=$((304 * student_number))

# Английское приветствие.
printf 'Hello to 304 from %s, number %s, group %s!\n' \
    "$student_name_en" "$student_number" "$group_name"

# Русское приветствие.
printf 'Привет, 304! Это %s, номер %s, группа %s!\n' \
    "$student_name_ru" "$student_number" "$group_name"

# Выводим информацию о студенте.
printf 'Student ID: %s | Language: %s | Control: %s\n' \
    "$student_id" "$language_name" "$control_value"

# Дополнительное задание:
# Передаём имя через конвейер (pipe) команде wc.
# wc -w считает количество слов.
word_count=$(printf '%s\n' "$student_name_en" | wc -w)

echo "Words in English name: $word_count"