let constArray = ["a", "b", "c", "d"]

constArray.count

var array = [String]()

if array.isEmpty {
    print("array is empty")
}

array += constArray

array += ["e"]

array.append("f")

var array2 = array

array
array2

array2[0] = "1"

array
array2

//array[1..<4] = ["0"]

array

array.insert("-", atIndex: 3)

array

array.removeAtIndex(3)

array

//let test = [Int](count: 10, repeatedValue: 100)
let money = [100, 1, 5, 20, 1, 50, 1, 1, 20, 1]



var sum = 0
for var i = 0; i < 9; i++ {
    //println("i = \(i)")
    sum += money[i]
}
sum

sum = 0

for var i = 0; i < money.count; i++ {
    //println("i = \(i)")
    sum += money[i]
}
sum

sum = 0

for i in 0..<money.count {
    print("index = \(i) value = \(money[i])")
    sum += money[i]
}
sum

sum = 0

for value in money {
    sum += value
}
sum

sum = 0

for (index, value) in money.enumerate() {
    print("index = \(index) value = \(value)")
    sum += value
}
sum












