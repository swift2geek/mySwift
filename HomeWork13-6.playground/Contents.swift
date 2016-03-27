//MARK: TASK 6
//6. Теперь проделайте все тоже самое, но не для структуры Студент, а для класса. Какой результат в 5м задании? Что изменилось и почему?

class Student {
    var name : String
    var surname : String
    var doB : String
    var raiting : Int
    
    init(name: String, surname: String, doB: String, raiting: Int) {
    self.name = name
    self.surname = surname
    self.doB = doB
    self.raiting = raiting
  }
}

var Olga = Student(name: "Olga", surname: "Stankov", doB: "01.01.1986", raiting: 49)
var Dima = Student(name: "Dima", surname: "Soev", doB: "11.11.1986", raiting: 99)
var Vasya = Student(name: "Vasya", surname: "Pupkin", doB: "13.11.1983", raiting: 13)
var Sasha = Student(name: "Sasha", surname: "Sackov", doB: "01.02.1986", raiting: 75)
var Ivan = Student(name: "Ivan", surname: "Koloh", doB: "01.02.1986", raiting: 70)
var Gosha = Student(name: "Gosha", surname: "Pupkin", doB: "23.02.1983", raiting: 13)

var diary = [Olga, Dima, Vasya, Sasha, Ivan, Gosha]

func printDiary (students: [Student]) {
    print("#\tSurname\tName\tDoB\t\t\tAverage raiting")
    
    for i in 0..<students.count {
        print("\(i+1)\t\(students[i].name)\t\(students[i].surname)\t\(students[i].doB)\t\(students[i].raiting)")
    }
}
printDiary(diary)

//MARK: TASK 3

printDiary(diary.sort( {$0.raiting > $1.raiting} ))

print("------------TASK 4--------------------")

//MARK: TASK 4

//Отсортируйте теперь массив по фамилии (по возрастанию), причем если фамилии одинаковые, а вы сделайте так чтобы такое произошло, то сравниваются по имени. Распечатайте “журнал”.

func sortingDiary (first: Student, second: Student) -> Bool {
    if first.surname == second.surname {
        return first.name < second.name
    }
    return first.surname < second.surname
}
printDiary(diary.sort(sortingDiary))

print("------------TASK 5--------------------")

// MARK: TASK 5
//5. Создайте переменную и присвойте ей ваш существующий массив. Измените в нем данные всех студентов. Изменится ли первый массив? Распечатайте оба массива.

var newDiary = diary

newDiary.count

newDiary[0].name = "Ilya"
newDiary[1].name = "Ivan"
newDiary[2].name = "Kolya"
newDiary[3].name = "Kas"
newDiary[4].name = "Polya"
newDiary[5].name = "Sabur"

printDiary(diary)
print("--------------------------------")
printDiary(newDiary)
