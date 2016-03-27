// MARK: TASK 1 & 2
struct Student {
    var name : String
    var surname : String
    var doB : String
    var raiting : Int
}

var stStruct1 = Student(name: "Olga", surname: "Stankov", doB: "01.01.1986", raiting: 49)
var stStruct2 = Student(name: "Anna", surname: "Soev", doB: "11.11.1986", raiting: 99)
var stStruct3 = Student(name: "Vasya", surname: "Pupkin", doB: "13.11.1983", raiting: 13)
var stStruct4 = Student(name: "Sasha", surname: "Sackov", doB: "01.02.1986", raiting: 75)
var stStruct5 = Student(name: "Ivan", surname: "Koloh", doB: "01.02.1986", raiting: 70)
var stStruct6 = Student(name: "Gosha", surname: "Pupkin", doB: "23.02.1983", raiting: 13)
var stStruct7 = Student(name: "Zahar", surname: "Zorro", doB: "23.02.1983", raiting: 13)

var diary = [stStruct1, stStruct2, stStruct3, stStruct4, stStruct5, stStruct6, stStruct7]

func printDiary (students: [Student]) {
    print("#\tName\tSurname\tDoB\t\t\tAverage raiting")
    
    for i in 0..<students.count {
        print("\(i+1)\t\(students[i].name)\t\(students[i].surname)\t\(students[i].doB)\t\(students[i].raiting)")
    }
}
printDiary(diary)

print("--------------------------------")
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



