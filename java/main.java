public class Main {
    public static void main(String[] args) {

        // Данные студента
        String studentNameRu = "Малуев Дмитрий Сергеевич";
        String studentNameEn = "Maluev Dmitriy Sergeevich";
        int studentNumber = 1;
        String groupName = "M3O-110BVk-26";
        String languageName = "Java";

        // Формируем идентификатор студента.
        // %02d означает, что номер будет состоять минимум из двух цифр.
        String studentId = String.format("%s/%02d",
                groupName, studentNumber);

        // Вычисляем контрольное значение.
        int controlValue = 304 * studentNumber;

        // Выводим приветствие на английском языке.
        System.out.printf(
                "Hello to 304 from %s, number %d, group %s!%n",
                studentNameEn, studentNumber, groupName
        );

        // Выводим приветствие на русском языке.
        System.out.printf(
                "Привет, 304! Это %s, номер %d, группа %s!%n",
                studentNameRu, studentNumber, groupName
        );

        // Выводим информацию о студенте.
        System.out.printf(
                "Student ID: %s | Language: %s | Control: %d%n",
                studentId, languageName, controlValue
        );
    }
}