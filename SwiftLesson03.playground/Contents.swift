//Tuples

//let simpleTuple : (Int, String, Bool, Double) = (1, "Hello", true, 2.3)
let simpleTuple = (1, "Hello", true, 2.3)

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

var tuple = (index:1, phrase:"Hello", registred:true, latency:2.3)
tuple.0
tuple.1
tuple.2
tuple.3

tuple.index
tuple.phrase
tuple.registred
tuple.latency

//change tuple's value

tuple.index = 2

let a = (x:1, y:2)
var b = (x:2, y:3)

b = a

//HOMWWORK#3

let myTuple = (20, 10, 5)
