import Foundation

var array = [Int]()
for _ in 1...10 {
    array.append(random() % 10)
}


func printClosure(myFunc: () -> ()) {
    for i in array {
     print(array[i])
    }
}

printClosure({ () -> () in
    print("hhh")
})


func sFunc(arrayInt: [Int], someFunc: (a: Int?, b: Int) -> Bool ) -> Int {
    var result : Int?
    for value in array {
        if someFunc(a: result, b: value) == true {
            result = value
        }
        
        
    }
    return result!
}
sFunc(array) { (a, b) -> Bool in
    if a == nil {
        return true
    } else if a < b {
        return true
    } else {
        return false
    }
    

}








