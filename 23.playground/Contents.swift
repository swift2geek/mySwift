class Symbol {
    
}

class A : Symbol {
    func aa(){}
}

class B : Symbol {
    func bb(){}
}

//yObject
//Any
let array : [Any] = [A(), B(), Symbol(), A(), A(), B(), "a", 5]

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
