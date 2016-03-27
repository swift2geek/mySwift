// Tuples

//let simpleTuple : (Int, String, Bool, Double) = (1, "Hello", true, 2.4)
let simpleTuple = (1, "Hello", true, 2.4)

let (number, greatings, check, decimal) = simpleTuple

number
greatings
check
decimal

let (_, _, check2, _) = simpleTuple
check2

simpleTuple.0
simpleTuple.1
simpleTuple.2
simpleTuple.3

var tuple = (index:1, phrase:"Hello", registered:true, latency:2.4)
tuple.0
tuple.1
tuple.2
tuple.3

tuple.index
tuple.phrase
tuple.registered
tuple.latency

// change tuple's value
tuple.index = 2

/*
let a = (x:1,y:2)
var b = (x:2,z:3)

b = a
*/

/*
let red = "red"
let green = "green"
let blue = "blue"
*/

let (red, green, blue) = ("red", "green", "blue")

let p = (x:5.0,y:5.5)

red
green
blue


let totalNumber = 5
let merchantName = "Alex"

print("\(totalNumber) \(merchantName)")
print((totalNumber, merchantName))
print(simpleTuple)


//home work 3

//1
print("МОИ ПОКАЗАНИЯ")
var myStats = (pushup:20, pullup:8, squat:5)
print(myStats)

//2
print("myPushups:  \(myStats.0)")
print("myPullups: \(myStats.pullup)")
print("mySquat: \(myStats.2)")

//3
print("ПОКАЗАНИЯ ЖЕНЫ")
let wifeStats = (pushup:10, pullup:5, squat:50)
//myStats = wifeStats

//4

let differenceStats = (myStats.0 - wifeStats.0, myStats.1 - wifeStats.1, myStats.2 - wifeStats.2)








