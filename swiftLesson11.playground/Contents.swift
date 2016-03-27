let numbers = [4, 3, 12, 7, 6, 3, 56, 7, 8, 9, 10]
func filterArray(array: [Int], f: (Int) -> Bool) -> [Int] {
    
    var filtered = [Int]()

    for i in array {
        if f(i) {
            filtered.append(i)
        }
    }
    return filtered
}
/*
func compare(i: Int) -> Bool {
    return i % 2 == 0
}
*/

filterArray(numbers, f: {(i: Int) -> Bool in
    return i % 2 == 0
})



//MARK: section1
// TODO:
//fixit
//FIXIT: ASDA

filterArray(numbers, f: {i in
    return i % 2 == 0
})
