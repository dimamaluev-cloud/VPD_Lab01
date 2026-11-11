// Описываем структуру данных студента с явными типами полей
interface Student {
  student_name_ru: string;
  student_name_en: string;
  student_number: number;
  group_name: string;
  language_name: string;
}

// Создаём типизированный объект студента
const student: Student = {
  student_name_ru: "Малуев Дмитрий Сергеевич",
  student_name_en: "Maluev Dmitriy Sergeevich",
  student_number: 11,
  group_name: "М3О-110БВк-26",
  language_name: "TypeScript",
};

// Код приветствия, который используется в программе
const greeting_code: number = 304;

// Формируем student_id: группа/номер, номер минимум из двух цифр
const student_id: string = `${student.group_name}/${String(student.student_number).padStart(2, "0")}`;

// Вычисляем контрольное значение: 304 * номер студента
const control_value: number = greeting_code * student.student_number;

// Выводим три обязательные строки через template literals
console.log(`Hello to ${greeting_code} from ${student.student_name_en}, number ${student.student_number}, group ${student.group_name}!`);
console.log(`Привет, ${greeting_code}! Это ${student.student_name_ru}, номер ${student.student_number}, группа ${student.group_name}!`);
console.log(`Student ID: ${student_id} | Language: ${student.language_name} | Control: ${control_value}`);
export{}