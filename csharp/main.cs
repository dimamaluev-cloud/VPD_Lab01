using System;

class Program
{
    static void Main()
    {
        // Данные студента
        string studentNameRu = "Малуев Дмитрий Сергеевич";
        string studentNameEn = "Maluev Dmitriy Sergeevich";
        int studentNumber = 11;
        string groupName = "M3O-110BVk-26";
        string languageName = "C#";

        // Создаём идентификатор студента.
        // D2 добавляет ведущий ноль, если номер меньше 10.
        string studentId = $"{groupName}/{studentNumber:D2}";

        // Вычисляем контрольное значение.
        int controlValue = 304 * studentNumber;

        // Настраиваем кодировку для русского текста.
        Console.OutputEncoding = System.Text.Encoding.UTF8;

        // Английское приветствие.
        Console.WriteLine(
            $"Hello to 304 from {studentNameEn}, number {studentNumber}, group {groupName}!"
        );

        // Русское приветствие.
        Console.WriteLine(
            $"Привет, 304! Это {studentNameRu}, номер {studentNumber}, группа {groupName}!"
        );

        // Информация о студенте.
        Console.WriteLine(
            $"Student ID: {studentId} | Language: {languageName} | Control: {controlValue}"
        );
    }
}