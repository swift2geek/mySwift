


/*
if age == 21 {
    
} else if age == 22 {
    
} else {
    
}

switch age {
case 21: //.......
    break
    
default:
    break
}*/

/*
mainLoop: for _ in 0...1000 {

    for i in 0..<20 {
        
        if (i < 15) {
            //continue
        }
        
        if i == 10 {
            break mainLoop
        }
        println(i)
    }
}
*/

var age = 67
var name = "Alex"


switch age {
    case 0...16:
        println("школота")
        println("dsa")
    
    case 17...21:
        println("студент")
    
    case 22...50: break
    
    case 52:
        println("не сработало!")
    
    case 51, 56, 57, 60:
        println("сработало!")
    
    default: break
}

switch name {
    case "Alex" where age < 50:
        println("hi buddy!")
    case "Alex" where age >= 50:
        println("I don't know you")
    default:
    break
}
/*
var optional : Int? = 5

if let optional = optional {
    println("\(optional) != nil")
}*/

let tuple = (name, age)

switch tuple {
    
    case ("Alex", 60): println("hi Alex 60")
    case ("Alex", 59): println("hi Alex 59")
    
    case (_, let number) where number >= 65 && number <= 70:
        println("hi old man")
    
    case ("Alex", _): println("hi Alex")
    
    default: break
}

let point = (5,-6)

switch point {
    
    case let (x,y) where x == y:
        println("x == y")
    case let (x,y) where x == -y:
        println("x == -y")
    case let (_,y) where y < 0:
        println("y < 0")
    
    default: break
}

let array : [Printable] = [5, 5.4, Float(5.4)]

switch array[2] {
    case _ as Int: println("Int")
    case _ as Float: println("Float")
    case _ as Double: println("Double")
    
    default: break
}

