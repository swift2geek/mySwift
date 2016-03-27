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

let char1 : Character = "x"
//
//for c in "Hello world!" {
//    println(c)
//}

str1.append(char1)

//(str1 as NSString).length
//NSString(string: str1).length



let heart = "\u{1F496}"

let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "e\u{301}"

let fun : Character = "ъ\u{301}\u{20dd}"

let funString = "what is this? -> \(fun)"

funString
//
//countElements(funString)
//(funString as NSString).length
//
//if funString == "aa" {
//    
//} else {
//    println("not equal")
//}

funString.hasPrefix("what")
funString.hasSuffix("ъ\u{20dd}\u{301}")
