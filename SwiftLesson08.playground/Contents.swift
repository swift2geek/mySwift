
//let dict = ["машина" : "car", "мужик" : "man"]
//dict ["мужик"]

var dict = ["машина" : "car", "мужик" : "man"]
dict["мужик"]
dict.count
dict.isEmpty

var dict3 = [String : String]()
dict3.count
dict3.isEmpty

dict["комп"] = "computer"

dict
Array(dict.keys)

dict.updateValue("mac", forKey: "комп")
dict
let comp = dict["комп"]
for key in dict.keys {
    print("Key = \(key), value = \(dict[key])")
}

//HOMEWORK 08
//1

var studProg = ["Samoylov Fedor" : 2, "Perevezencev Evgeniy" : 3, "Vladimir Vladimirov" : 5]
studProg.updateValue(4, forKey: "Samoylov Fedor")
studProg.updateValue(3, forKey: "Perevezencev Evgeniy")
studProg
studProg.updateValue(5, forKey: "Колчинкев Стас")
studProg.updateValue(4, forKey: "Жанна Дарк")
studProg
studProg.removeValueForKey("Samoylov Fedor")
studProg
studProg.removeValueForKey("Vladimir Vladimirov")
studProg

var sum = 0
for number in studProg.values {
    sum += number
}
sum

var  ave : Double = Double(sum) / Double(studProg.values.count)

ave


//2
//2. Создать дикшинари дни в месяцах, где месяц это ключ, а количество дней - значение.
//В цикле выведите ключ-значение попарно, причем один раз выведите через тюплы, а другой раз пройдитесь по массиву ключей и для каждого из них доставайте значения.

let calendar = ["Jan":31, "Feb":28, "Mar":31, "Apr":30, "May":31, "Jun":30, "Jul":31, "Aug":31, "Sep":30, "Oct":31, "Nov":30, "Dec":31]

for (month, day) in calendar {
    print("In \(month) are \(day) days")
}
for month in calendar.keys {
    print("In \(month) are \(calendar[month]!) days")
}
//
//3. Создать дикшинари , в которой ключ это адрес шахматной клетки (пример: a5, b3, g8), а значение это Bool. Если у клетки белый цвет, то значение true, а если черный - false. Выведите дикшинари в печать и убедитесь что все правильно.
//
//Рекомендация: постарайтесь все сделать используя вложенный цикл (объяснение в уроке).

var chessTable = [String: Bool]()
var charTable = ["a", "b", "c", "d", "e", "f", "g", "h"]

for i in 0..<8 {
    for j in 1...charTable.count {
        chessTable["\(charTable[i])\(j)"] = ((i+j)%2 != 0)
    }
}
chessTable

