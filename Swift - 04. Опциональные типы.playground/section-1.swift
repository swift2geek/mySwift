// продажи
/*
50 + 20 = 70
10 - 10 = 0
0
*/

/*
//server request
is it Saturday?

true / false / nil
*/

/*
Петя в кармане 5 яблок - 5

Вася нет карманов
*/

var apples : Int? = 5

//apples = nil

if apples == nil {
    print("nil apples")
} else {
    //println(apples)
    
    let a = apples! + 2
}


if var number = apples {
    number = number + 2
}

let age = "60"

if Int(age) != nil {
    let ageNumber = Int(age)!
}

if let ageNumber = Int(age) {
    ageNumber
}


//Int
//Int?
//Int!

var apples2 : Int! = nil

apples2 = 2

//assert(apples2 != nil, "oh no!!!")

apples2 = apples2 + 5



//DZ 4



let year = "1989"
let month = "Dec12"
let day = "15"
let birthday = "01may06"
let month2 = "03"
var sum = 0

var yyy = Int(year)
if var a = Int(year) {
    sum = sum + a
}


if Int(month) != nil {
    sum = sum + Int(month)!
}

if var c = Int(day) {
    sum = sum + c
}



if Int(birthday) != nil {
    sum = sum + Int(birthday)!
}
if var e = Int(month2) {
    sum = sum + e
} else {
    print("Nil")
}
print(sum)



//sum = sum + Int(day)! 


// Home Task #2

var serverResponse : (statusCode: Int, message: String?, errorMessage: String?) = (200, "Success", "404 Bad gateway")

//with status code
if serverResponse.statusCode >= 200 && serverResponse.statusCode < 300 {
    print(serverResponse.message)
} else {
    print(serverResponse.errorMessage)
}

//without status code
var iResponse : (iMessage: String?, iError: String?) = ("Success", "404 Bad gateway")
if iResponse.iMessage != nil && iResponse.iError != nil {
    print(iResponse.iMessage)
} else {
    print(iResponse.iError)
}

// Home Task 3
/* 3. Создайте 5 тюплов с тремя параметрами:

имя, номер машины, оценка за контрольную

при создании этих тюплов не должно быть никаких данных

после создания каждому студенту установите имя

некоторым установите номер машины

некоторым установите результат контрольной

выведите в консоль:

- имена студента
- есть ли у него машина
- если да, то какой номер
- был ли на контрольной
- если да, то какая оценка
*/
//var tuple1 : (name: String?, hasCar: Bool?, whichNumber:Int?, wasOnTest:Bool?, wasOnTestMark: Int?) = (nil, nil, nil, nil, nil)

var student1 : (name: String?, whichNumber:Int?, testMark: Int?) = (nil, nil, nil)
var student2 : (name: String?, whichNumber:Int?, testMark: Int?) = (nil, nil, nil)
var student3 : (name: String?, whichNumber:Int?, testMark: Int?) = (nil, nil, nil)
var student4 : (name: String?, whichNumber:Int?, testMark: Int?) = (nil, nil, nil)
var student5 : (name: String?, whichNumber:Int?, testMark: Int?) = (nil, nil, nil)
student1 = ("Bob", 333, 100)
student1
student2 = ("Heather", 007, 30)
student3 = ("Adam", nil, 90)
student4 = ("Bishop", 80, nil)
student5 = ("Ariel", nil, nil)
print("Student1")
print(student1.name)
if student1.whichNumber != nil {
    print("Has Car",",","His car number :\(student1.whichNumber)")
} else {
    print("He hasn't a car")
}
if student1.testMark != nil {
    print("Was on test",",","His mark :\(student1.testMark)")
} else {
    print("He wasn't on test")
}

print("Student2")
print(student2.name)
if student2.whichNumber != nil {
    print("Has Car",",","His car number :\(student2.whichNumber)")
} else {
    print("He hasn't a car")
}
if student2.testMark != nil {
    print("Was on test",",","His mark :\(student2.testMark)")
} else {
    print("He wasn't on test")
}

print("Student3")
print(student3.name)
if student3.whichNumber != nil {
    print("Has Car",",","His car number :\(student3.whichNumber)")
} else {
    print("He hasn't a car")
}
if student3.testMark != nil {
    print("Was on test",",","His mark :\(student3.testMark)")
} else {
    print("He wasn't on test")
}

print("Student4")
print(student4.name)
if student4.whichNumber != nil {
    print("Has Car",",","His car number :\(student4.whichNumber)")
} else {
    print("He hasn't a car")
}
if student4.testMark != nil {
    print("Was on test",",","His mark :\(student4.testMark)")
} else {
    print("He wasn't on test")
}

print("Student5")
print(student5.name)
if student5.whichNumber != nil {
    print("Has Car",",","His car number :\(student5.whichNumber)")
} else {
    print("He hasn't a car")
}
if student5.testMark != nil {
    print("Was on test",",","His mark :\(student5.testMark)")
} else {
    print("He wasn't on test")
}



