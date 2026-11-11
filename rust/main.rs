fn main() {

    // Данные студента
    let student_name_ru = "ВАШЕ ИМЯ";
    let student_name_en = "Your Name";
    let student_number: u32 = 1;
    let group_name = "ВАША_ГРУППА";
    let language_name = "Rust";

    // Формируем идентификатор студента.
    // {:02} означает минимум две цифры.
    let student_id = format!(
        "{}/{:02}",
        group_name,
        student_number
    );

    // Вычисляем контрольное значение.
    let control_value = 304 * student_number;

    // Английское приветствие.
    println!(
        "Hello to 304 from {}, number {}, group {}!",
        student_name_en,
        student_number,
        group_name
    );

    // Русское приветствие.
    println!(
        "Привет, 304! Это {}, номер {}, группа {}!",
        student_name_ru,
        student_number,
        group_name
    );

    // Информация о студенте.
    println!(
        "Student ID: {} | Language: {} | Control: {}",
        student_id,
        language_name,
        control_value
    );

    // Дополнительный вывод student_id.
    println!("Rust student_id: {}", student_id);
}