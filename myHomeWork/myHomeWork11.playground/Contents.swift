// Task 1

func homeFunc(closure: () -> ()) {
    
    var summ = 0
    for i in 1...10 {
        print(i)
        summ += i
    }
    print("summ = \(summ)")
    closure()
}

homeFunc({print("some text end")})

// Task 2

let intArray = [31,12,10,100,500,113,1,0,45,2]
var newArray = intArray.sort(<)
var newArray2 = intArray.sort(>)

// Task 3

func myFunc(arrayInt: [Int], closure: (int1: Int, int2: Int?) -> Bool) -> Int {
    
    var result : Int? = 0
    for value in arrayInt {
        if closure(int1: value, int2: result) {
            result = value
        }
    }
    return result ?? 0
}

// Task 4

//4. Создайте произвольную строку. Преобразуйте ее в массив букв. Используя метод массивов sorted отсортируйте строку так, чтобы вначале шли гласные в алфавитном порядке, потом согласные, потом цифры, а потом символы

func priority(string: String) -> Int {
    switch string.lowercaseString {
    case "a", "e", "y", "u", "i", "o": return 0
    case "a"..."z" : return 1
    case "0"..."9" : return 2
    default: return 3
    }
}

let str = "asdfafieqrpiuq83240582KJS;KJkj;skjdfasndfP(#_))$^(&JJNB><><><,<,,..,.,!???"

var array = Array(str.characters)


let sorted = array.sort() {
    
    switch (priority(String($0)), priority(String($1))) {
    case let (x,y) where x < y: return true
    case let (x,y) where x > y: return false
    default: return String($0).lowercaseString <= String($1).lowercaseString
    }
}