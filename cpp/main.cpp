#include <iostream>     // Подключаем библиотеку для ввода-вывода (cin, cout)
#include <iomanip>      // Подключаем библиотеку для форматирования вывода (setw, setfill)

#ifdef _WIN32           // Если компилируем под Windows...
#include <windows.h>    // ...подключаем Windows API
#endif                  // Конец условия

int main() {            // Главная функция программы. Отсюда начинается выполнение.

#ifdef _WIN32           // Если это Windows...
    SetConsoleOutputCP(CP_UTF8);  // Устанавливаем кодировку вывода консоли в UTF-8
                                  // (чтобы русские буквы отображались правильно)
    SetConsoleCP(CP_UTF8);        // Устанавливаем кодировку ввода консоли в UTF-8
#endif                  // Конец условия для Windows

    // === Исходные данные студента ===
    // std::string — это строковый тип в C++ (удобнее, чем char*)
    const std::string student_name_ru = "Малуев Дмитрий Сергеевич";  // ФИО на русском
    const std::string student_name_en = "Maluev Dmitriy Sergeevich";  // ФИО на английском
    int student_number = 11;                                          // Номер студента
    const std::string group_name = "М3О-110БВк-26";                   // Группа
    const std::string language_name = "C++";                          // Название языка

    // Вычисляем контрольное значение
    int control_value = 304 * student_number;                         // 304 * 11 = 3344

    // === Вывод первой строки (английское приветствие) ===
    // std::cout — поток вывода. Оператор << передаёт данные в поток.
    std::cout << "Hello to 304 from " << student_name_en              // текст + английское ФИО
              << ", number " << student_number                        // + номер
              << ", group " << group_name << "!\n";                   // + группа + перевод строки

    // === Вывод второй строки (русское приветствие) ===
    std::cout << "Привет, 304! Это " << student_name_ru               // текст + русское ФИО
              << ", номер " << student_number                         // + номер
              << ", группа " << group_name << "!\n";                  // + группа + перевод строки

    // === Вывод третьей строки (Student ID + Language + Control) ===
    // std::setw(2) — вывести число шириной минимум 2 символа
    // std::setfill('0') — заполнить пустые места нулями слева
    // Это требование методички для C++ (форматирование через потоки)
    std::cout << "Student ID: " << group_name << "/"                  // группа + слэш
              << std::setfill('0') << std::setw(2) << student_number  // номер с ведущим нулём при необходимости
              << " | Language: " << language_name                     // язык
              << " | Control: " << control_value << "\n";             // контрольное значение

    return 0;           // Возвращаем 0 — программа завершилась успешно
}