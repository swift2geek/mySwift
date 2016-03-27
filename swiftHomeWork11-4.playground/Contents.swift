//4. Создайте произвольную строку. Преобразуйте ее в массив букв. Используя метод массивов sorted отсортируйте строку так, чтобы вначале шли гласные в алфавитном порядке, потом согласные, потом цифры, а потом символы

import Foundation

var array = "aslkdjaljsdalsjd as0398018234 jlakjdsa;ksdjSDJFKJSLDFJSLKDFJ SDF??!!!@@#$%#$%^ ASDJLAKSDFJ laslkdjalsdjpiwqepituqperyt0987307"
var arrayOfChar = Array(array.characters)

func priority(string:String) -> Int {
    switch(string.lowercaseString) {
    case "a", "e", "i", "o", "u", "y": return 0
    case "a"..."z": return 1
    case "0"..."9": return 2
    default: return 3
    }
}

let sortedArray = arrayOfChar.sort() {
    switch (priority(String($0)), priority(String($1))) {
    case let (x, y) where x == y && String($0).uppercaseString == String($1).uppercaseString: return $0 < $1
        
    case let (x, y) where x == y: return String($0).uppercaseString < String($1).uppercaseString
    default: return priority(String($0)) < priority(String($1))
    }
}
print(sortedArray)



//5. Проделайте задание №3 но для нахождения минимальной и максимальной буквы из массива букв (соответственно скалярному значению)