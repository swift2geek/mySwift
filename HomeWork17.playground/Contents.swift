//Шахматная доска (Легкий уровень)
//
//1. Создайте тип шахматная доска.
//    
//    2. Добавьте сабскрипт, который выдает цвет клетки по координате клетки (буква и цифра).
//
//3. Если юзер ошибся координатами - выдавайте нил



import Foundation
struct chess {
    subscript(row: Int, column: String) -> String? {
        var alphabet = ["A", "B", "C", "D", "E", "F", "G", "H"]
        var index = 0
        for i in alphabet {
            index++
            if i == column.uppercaseString {
                break
            }
            if index == 9 || row > 8 {
                return nil
            }
        }
    }
}