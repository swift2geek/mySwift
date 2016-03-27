
//let bigNumber = 1092381092831

let oct = 0o12
let number = 255
let hex = 0xff
let binary = 0b1111_1111

Int8.min
Int8.max
UInt8.min
UInt8.max

13.3123e2
13.3123e-2

0x5p2
0x5p-2

/*
let a = 5
let b = 5.0


let c = a + Int(b)
*/

/*
let a = 5
let b = 5.2

let c = Double(a) + b
*/

//let c = 5 + 5.2
/*
let a = 5.0
let b = 5.2

let c = a + b
*/
typealias walter = Int


let a : walter = 5
let b = 5.2

let c = a + walter(b)

let d = false

if d {
    print("Hi")
} else {
    print("Bye!")
}

//домашние задание2
//zadacha 1

print ("int8. minimum = \(Int8.min)")
print ("int8. maximum = \(Int8.max)")
print ("UInt8. minimum = \(UInt8.min)")
print ("UInt8. maximum = \(UInt8.max)")
print ("Int16. minimum = \(Int16.min)")
print ("Int16. maximum = \(Int16.max)")
print ("UInt16. minimum = \(UInt16.min)")
print ("UInt16. maximum = \(UInt16.max)")
print ("Int32. minimum = \(Int32.min)")
print ("Int32. maximum = \(Int32.max)")
print ("UInt32. minimum = \(UInt32.min)")
print ("UInt32. maximum = \(UInt32.max)")
print ("Int64. minimum = \(Int64.min)")
print ("Int64. maximum = \(Int64.max)")
print ("UInt64. minimum = \(UInt64.min)")
print ("UInt64. maximum = \(UInt64.max)")


//zadacha 2

let aa = 33
let bb : Float = 3.6
let cc = 4.2

let z = Int(Double(aa) + Double(bb) + cc) //Int
let x = Float(aa) + bb + Float(cc) //Float
let y = Double(aa) + Double(bb) + cc //Double

//zadacha 3
let sumInt = aa + Int(bb) + Int(cc)
let sumDouble : Double = Double(aa) + Double(bb) + cc

if Double(sumInt) < sumDouble {
    print("Все пучком дабл больше")
} else if Double(sumInt) == sumDouble {
    print("Doube equal Int")
} else {
    print("Печалька, инты больше")
}





