:- encoding(utf8).
% Данные студента.
% student/5 — факт с пятью аргументами:
% имя на русском, имя на английском,
% номер, группа и название языка.

student(
    "Малуев Дмитрий Сергеевич",
    "Maluev Dmitriy Sergeevich",
    11,
    "M3O-110BVk-26",
    "Prolog"
).

% Правило вычисляет контрольное значение.
% Сначала получает номер студента из факта,
% затем умножает его на 304.

control_value(Value) :-
    student(_, _, Number, _, _),
    Value is 304 * Number.

% Главная процедура программы.
main :-
    % Получаем данные студента.
    student(NameRu, NameEn, Number, Group, Language),

    % Вычисляем контрольное значение.
    control_value(Control),

    % Создаём идентификатор студента.
    format(string(StudentID), '~w/~|~`0t~d~2+',
           [Group, Number]),

    % Английское приветствие.
    format(
        'Hello to 304 from ~w, number ~d, group ~w!~n',
        [NameEn, Number, Group]
    ),

    % Русское приветствие.
    format(
        'Привет, 304! Это ~w, номер ~d, группа ~w!~n',
        [NameRu, Number, Group]
    ),

    % Выводим информацию о студенте.
    format(
        'Student ID: ~w | Language: ~w | Control: ~d~n',
        [StudentID, Language, Control]
    ).