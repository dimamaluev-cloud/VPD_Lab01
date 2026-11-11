// Объявляем переменную с ФИО студента на русском языке
const student_name_ru = "Малуев Дмитрий Сергеевич";

// Объявляем переменную с ФИО студента на английском языке
const student_name_en = "Maluev Dmitriy Sergeevich";

// Объявляем переменную с номером студента в списке группы
const student_number = 11;

// Объявляем переменную с названием учебной группы
const group_name = "М3О-110БВк-26";

// Объявляем переменную с названием используемого языка программирования
const language_name = "JavaScript";

// Задаём код приветствия, который используется в программе
const greeting_code = 304;

// Формируем student_id: группа/номер, номер минимум из двух цифр
const student_id = `${group_name}/${String(student_number).padStart(2, "0")}`;

// Вычисляем контрольное значение: 304 * номер студента
const control_value = greeting_code * student_number;

// Выводим три обязательные строки через template literals
console.log(`Hello to ${greeting_code} from ${student_name_en}, number ${student_number}, group ${group_name}!`);
console.log(`Привет, ${greeting_code}! Это ${student_name_ru}, номер ${student_number}, группа ${group_name}!`);
console.log(`Student ID: ${student_id} | Language: ${language_name} | Control: ${control_value}`);

// Визитная карточка JavaScript: длина строки student_name_en
console.log(`Длина student_name_en: ${student_name_en.length}`);