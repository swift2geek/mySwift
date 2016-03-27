import Foundation

// Task 1
func cheese() -> String {
    return "\u{1f9c0}"
}

print(cheese())


func nerd() -> String {
    return "\u{1f913}"
}

func cool() -> String {
    return "\u{1f918}"
}

print(cheese() + "+" + nerd() + "=" + cool())

// Task 2

func printString(letter: Int8, symbol: Int8) -> String {
    return (letter % 2 == symbol % 2) ? "black" : "white"
}

printString(2, symbol: 2)

// Task 3

func arrayFunc(a: [Int]) -> [Int] {
    return a.reverse()
}

var b = [1, 2, 3, 4, 5, 6]
print(arrayFunc(b))

// Task 4

var arr = [1, 2, 3, 4, 5, 6]
func arrayFuncIn(inout a: [Int]) {
    a = a.reverse()
}

arrayFuncIn(&arr)
print("a is now \(arr)")
print(arr)

// Task 5

func clearString(inout atString: String) {
 
    var tempStr = ""
    
    for char in atString.lowercaseString.characters {
        switch String(char) {
        case "a", "e", "o", "y", "i", "u" :
            tempStr += String(char).uppercaseString
        case ",", ".", ":", "?", "!" :
            tempStr += ""
        case "b"..."z" :
            tempStr += String(char)
        case "0" :
            tempStr += "zero"
        case "1" :
            tempStr += "one"
        case "2" :
            tempStr += "two"
        case "3" :
            tempStr += "three"
        case "4" :
            tempStr += "four"
        case "5" :
            tempStr += "five"
        case "6" :
            tempStr += "six"
        case "7" :
            tempStr += "seven"
        case "8" :
            tempStr += "eight"
        case "9" :
            tempStr += "nine"
        default: break
            
        }
    }
    atString = tempStr
}
var r = "lakjGVK8766574!!?.,"
clearString(&r)
print(r)
