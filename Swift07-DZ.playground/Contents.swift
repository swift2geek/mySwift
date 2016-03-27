//1. создать массив "дни в месяцах"
//12 элементов содержащих количество дней в соответствующем месяце
//
//используя цикл for и этот массив
//    
//    - выведите количество дней в каждом месяце (без имен месяцев)
//- используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней
//- сделайте тоже самое, но используя массив тюплов с параметрами (имя месяца, кол-во дней)
//- сделайте тоже самое, только выводите дни в обратном порядке (порядок в массиве не меняется)
//
//- для произвольно выбранной даты (месяц и день) посчитайте количество дней до этой даты от начала года
//

//2. Сделайте первое задание к уроку номер 4 используя массивы:
//
//(создайте массив опшинал интов и посчитайте сумму)
//
//- в одном случае используйте optional binding
//- в другом forced unwrapping
//- а в третьем оператор ??
//

//3. создайте строку алфавит и пустой массив строк
//
//в цикле пройдитесь по всем символам строки попорядку, преобразовывайте каждый в строку и добавляйте в массив, причем так, чтобы на выходе получился массив с алфавитом задом-наперед
let day = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30 ,31]
//1.1
print(day)
//1.2
let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]

for i in 0..<day.count {
    print("month = \(months[i]) How many days? = \(day[i])")
}
//1.3
var myMonthTuple = [("Jan", 31), ("Feb", 28), ("Mar", 31), ("Apr", 30), ("May", 31), ("Jun", 30), ("Jul", 31), ("Aug", 31), ("Sep", 30), ("Oct", 31), ("Nov", 30), ("Dec", 31)]
for var i=myMonthTuple.count - 1; i >= 0; i-- {
    print("Dyas in month back \(myMonthTuple[i])")
}
//1.4 - date 15.03
var countDay = 0
for i in 0..<3 {
    countDay += day[i]
}
countDay -= 16
print(countDay)

//2
let year = "1989"
let month = "Dec12"
let dday = "15"
let birthday = "01may06"
let month2 = "03"

//let optionalInts = [(Int(year), Int(month), Int(dday), Int(birthday), Int(month2))]

//2.1 optional binding
let optionalInts : [Int?] = [1989, nil, 15, nil, 3]
var sum = 0
for value in optionalInts {
    if let number = value {
        sum += number
    }
}
print(sum)

//2.2 forced unwraping
sum = 0
for value in optionalInts {
    if value != nil {
        sum += value!
    }
}
print(sum)

//2.3 ??
sum = 0
for value in optionalInts {
    sum += value ?? 0
}
print(sum)

//3
let charString = "abcdefghijklmnopqrstuvwxyz"
var stringArray = [String]()

for i in charString.characters {
    stringArray.insert(String(i), atIndex: 0)
}
print(stringArray)
