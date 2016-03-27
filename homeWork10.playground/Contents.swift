//homeWork10
//DZ 01

func fishSymb() -> String {
    return "\u{2653}"
}
fishSymb()

func moonSymb() -> String {
    return "\u{1f319}"
}
moonSymb()

print("\(fishSymb()) a very sensetive for \(moonSymb())")

//DZ 02
//2. Опять шахматные клетки. Реализовать функцию, которая принимает букву и символ и возвращает строку “белая” или “черная”. Строку потом распечатайте в консоль

func isCellBlackAt(row row:Int, andColumn column:Int) -> String {
    return (row % 2 == column % 2) ? "black" : "white"
}
isCellBlackAt(row: 2, andColumn: 8)

//dz 03
//3. Создайте функцию, которая принимает массив, а возвращает массив в обратном порядке. Можете создать еще одну, которая принимает последовательность и возвращает массив в обратном порядке. Чтобы не дублировать код, сделайте так, чтобы функция с последовательностью вызывала первую.

func arrayBackward(numbers: [Int]) -> [Int] {
    var backward = [Int]()
    for value in numbers {
        backward.insert(value, atIndex: 0)
    }
    return backward
}
arrayBackward([1, 11, 123, 12, 12, 10])

func backwardSeq(num:Int ... ) -> [Int]? {
    if (num.isEmpty) {
        return nil
    } else {
        return arrayBackward(num)
    }
}
backwardSeq()
//4 
//4. Разберитесь с inout самостоятельно и выполните задание номер 3 так, чтобы функция не возвращала перевернутый массив, но меняла элементы в существующем. Что будет если убрать inout?
//two swap
func swapTwoInts(inout a:Int, inout b:Int) {
    let temp = a
    a = b
    b = temp
}

var a = 30
var b = 10
swapTwoInts(&a, b: &b)
a
b

//dz 05
//5. Создайте функцию, которая принимает строку, убирает из нее все знаки препинания, делает все гласные большими буквами, согласные маленькими, а цифры меняет на соответствующие слова (9 -> nine и тд)


func defaceString(inout inString:String) {
    let digits = ["0":"zero", "1":"one", "2":"two", "3":"three", "4":"four", "5":"five", "6":"six", "7":"seven", "8":"eight", "9":"nine", ]
    
    for symb in inString.lowercaseString.characters {
        
        switch symb {
        case "a", "e", "i", "o", "u" :
            inString += String(symb).uppercaseString
        case "0" ... "9" :
            inString += digits[String(symb)]!
        case ".", ",", ";", ":", "!", "?", "-" :
            inString += ""
        default:
            inString += String(symb)
        }
        inString.removeAtIndex(inString.startIndex)
    }
}
print("END CODE")

var someString = "a1? 2e"
defaceString(&someString)
someString
print(someString)