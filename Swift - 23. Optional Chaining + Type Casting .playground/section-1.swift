import Foundation

//class Address {
//    
//    var street = "Deribasovskaya"
//    var number = "1"
//    var city = "Odessa"
//    var country = "Ukraine"
//}
//
//struct Garage {
//    var size = 2
//}
//
//class House {
//    
//    var rooms = 1
//    var address = Address()
//    var garage : Garage? = Garage()
//}
//
//class Car {
//    var model = "Zaporojec"
//    
//    func start() {
//    }
//}
//
//
//class Person {
//    
//    var cars : [Car]? = [Car()]
//    var house : House? = House()
//}
//
//let p = Person()
//
////p.cars![0]
////p.house!
//
////p.house!.garage!.size
//
//if let house = p.house {
//    if var garage = house.garage {
//        garage.size = 3
//    }
//}
//if (p.house?.garage?.size = 3) != nil {
//    print("upgrade complete!")
//} else {
//    print("failure!")
//}
//
//if let size = p.house?.garage?.size {
//    size
//}

//p.cars?[1].model
//
//
//if (p.house?.garage?.size = 3) != nil {
//    println("upgrade!")
//} else {
//    println("failure!")
//}
//
//
//if let size = p.house?.garage?.size {
//    size
//}
//
////p.cars?[1].model
//
//if p.cars?[0].start() != nil {
//    print("start!")
//} else {
//    print("failure!")
//}
//
//
////////////


class Symbol {
    
}

class A : Symbol {
    func aa(){}
}

class B : Symbol {
    func bb(){}
}

//AnyObject
//Any
let array : [Any] = [A(), B(), Symbol(), A(), A(), B(), "a", 5,
    {() -> () in return}]

var aCount = 0
var bCount = 0
var sCount = 0

for value in array {
    
    if value is A {
        aCount++
    } else if value is B {
        bCount++
    } else if value is Symbol {
        sCount++
    }
    
    if value is String {
        print("tada")
    }
    
    if let fun = value as? ()->() {
        print("tada")
        fun()
    }
    
    if let a = value as? A {
        a.aa()
    } else if let b = value as? B {
        b.bb()
    }
    
    //let a = value as A
}
