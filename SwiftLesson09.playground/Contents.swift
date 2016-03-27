//Home Work 1
let line = "Swift’s switch statement is also considerably more powerful than its counterpart in C. The cases of a switch statement do102934102983470192837401987234 not “fall through” to the next case in Swift, avoiding common C errors caused by missing break statements. Cases can match many different patterns, including interval matches, tuples, and casts to a specific type. Matched values in a switch case can be bound to temporary constants or variables ?????for use within the case’s body, and complex matching conditions can be expressed with a where clause for each case."
var numbers = 0
var text = 0
var other = 0
print(line)
for i in line.characters {
    switch i {
        case "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z":
        text++
        case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0":
        numbers++
    default: other++
    }
}
print("В тексте \(text) букв, \(numbers) цифр и \(other) остальных символов")

//Home Work 2
//2. Создайте свитч который принимает возраст человека и выводит описание жизненного этапа

let age = 32

switch age {
    case 0...7:
        print("ребенок")
    case 8...17:
        print("школота")
    case 18...24:
        print("студер-рандомчик")
    case 25...33:
        print("работяга+копление денег + прокачка себя и поиск себя")
    case 34...60:
        print("предприниматель")
default:print("пенсионер")
}

//Home Work 3
//3. У вас есть имя отчество и фамилия студента (русские буквы). Имя начинается с А или О, то обращайтесь к студенту по имени, если же нет, то если у него отчество начинается на В или Д, то обращайтесь к нему по имени и отчеству, если же опять нет, то в случае если фамилия начинается с Е или З, то обращайтесь к нему только по фамилии. В противном случае обращайтесь к нему по полному имени. 

let name = (firstName: "Ольга", middleName: "Игоревна", lastName: "Вальтер")
switch name {
case _ where name.firstName.hasPrefix("А") || name.firstName.hasPrefix("О"): print(name.0)
case _ where name.middleName.hasPrefix("В") || name.middleName.hasPrefix("Д"): print("\(name.0) \(name.1)")
case _ where name.lastName.hasPrefix("Е") || name.lastName.hasPrefix("З"): print(name.2)
default: print(name)
}


//Home Work 4
//4. Представьте что вы играете в морской бои и у вас осталось некоторое количество кораблей на поле 10Х10 (можно буквы и цифры, а можно только цифры). Вы должны создать свитч, который примет тюпл с координатой и выдаст один из вариантов: мимо, ранил, убил.

let myShip1 = (3, 4...6)
let myShip2 = (3...5, 9)
let myShip3 = (5, 1...3)
let myShip4 = (6, 7)
let myShip5 = (7...8, 4)

let fire = (5, 0)
switch fire {
case (3, 4...6): print("ранил")
case (3...5, 9): print("ранил")
case (5, 1...3): print("ранил")
case (6, 7):print("убил")
case (7...8, 4): print("ранил")
default: print("мимо")
}