package main

import "fmt"

func main() {

    // Данные студента
    studentNameRu := "ВАШЕ ИМЯ"
    studentNameEn := "Your Name"
    studentNumber := 1
    groupName := "ВАША_ГРУППА"
    languageName := "Go"

    // Создаём идентификатор студента.
    // %02d означает минимум две цифры.
    studentID := fmt.Sprintf("%s/%02d",
        groupName, studentNumber)

    // Вычисляем контрольное значение.
    controlValue := 304 * studentNumber

    // Английское приветствие.
    fmt.Printf(
        "Hello to 304 from %s, number %d, group %s!\n",
        studentNameEn, studentNumber, groupName,
    )

    // Русское приветствие.
    fmt.Printf(
        "Привет, 304! Это %s, номер %d, группа %s!\n",
        studentNameRu, studentNumber, groupName,
    )

    // Информация о студенте.
    fmt.Printf(
        "Student ID: %s | Language: %s | Control: %d\n",
        studentID, languageName, controlValue,
    )
}