import Foundation

var str = String()
//var str = "c"

str = str + "a"
str += "b"

/*
var a = 5
var b = a

++a
b
*/

var str1 = "a"
var str2 = str1

str1
str2

//str1 = ""

str1
str2


str1.isEmpty

let char1 = "Hello world!"

for c in char1.characters {
    print(c)
}

//str1.append(char1)

//(str1 as NSString).length
//NSString(string: str1).length



let heart = "\u{1F496}"

let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "e\u{301}"

let fun : Character = "ъ\u{301}\u{20dd}"

let funString = "what is this? -> \(fun)"

funString

funString.characters.count
//(funString as NSString).length
//
if funString == "aa" {
    
} else {
    print("not equal")
}

funString.hasPrefix("what")
funString.hasSuffix("ъ\u{20dd}\u{301}")




//DZ 6
//1. Выполните задание #1 урока о базовых операторах: http://vk.com/topic-58860049_31536965
//только вместо forced unwrapping и optional binding используйте оператор ??
//
//Когда посчитаете сумму, то представьте свое выражение в виде строки
//Например: 5 + nil + 2 + 3 + nil = 10
//
//но в первом случае используйте интерполяцию строк, а во втором конкатенацию

let year = "1989"
let month = "Dec12"
let day = "15"
let birthday = "01may06"
let month2 = "03"
//var sum = 0

var a = Int(year) ?? 0
var b = Int(month) ?? 0
var c = Int(day) ?? 0
var d = Int(birthday) ?? 0
var e = Int(month2) ?? 0

let sum = a + b + c + d + e
let interpolation = "\(a) + \(b) +\(c) +\(d) +\(e)= \(sum)"

let a1 = Int(year) != nil ? year : "nil"
let a2 = Int(month) != nil ? month : "nil"
let a3 = Int(day) != nil ? day : "nil"
let a4 = Int(birthday) != nil ? birthday : "nil"
let a5 = Int(month2) != nil ? month2 : "nil"

let sumInterpolation = "\(a1) + \(a2) + \(a3) + \(a4) + \(a5) = \(sum)"
let sumConcataion =  a1+" + "+a2+" + "+a3+" + "+a4+" + "+a5+" = "+"\(sum)"

//Task2
let cancer = "\u{264B}"
let fish = "\u{2653}"
let neptune = "\u{2646}"
let recycle = "\u{2672}"
let forall = "\u{2200}"

let text3 = "\(cancer), \(fish), \(neptune), \(recycle), \(forall)"
print("символов в строке text3 = \(text3.characters.count)")
print("символов в строке text3 по методу Obj-C = \((text3 as NSString).length)")

//Task3
let string1 = "abcdefghijklmnopqrstuvwxyz"
let const:Character = "d"
var index = 0

for char in string1.characters {
    if const == char {
    print ("Index = \(index)")
}
index++
}



