import Foundation

class Human {
    var weight : Int
    var age : Int
    
    init(weight: Int, age: Int) {
        self.weight = weight
        self.age = age
    }
    
    convenience init(age: Int) {
        self.init(weight: 0, age: age)
    }
    
    convenience init(weight: Int) {
        self.init(weight: weight, age: 0)
    }
    
    convenience init() {
        self.init(weight: 0)
    }
    
    func test(){}
}

enum Color : Int {
    case Black
    case White
    
    init?(_ value : Int) {
        switch value {
        case 0: self = Black
        case 1 : self = White
        default: return nil
        }
    }
}

let a = Color(0)
let b = Color(rawValue: 0)

struct Size {
    var width : Int
    var height : Int
    
    init?(width: Int, height: Int) {
        self.width = width
        if height < 0 {
            return nil
        }
        self.height = height
        return nil
    }
}

class Friend : Human {
    
    var name : String!
    
    let skin : Color
    
    init?(name: String) {
        self.name = name
        
        let random = Int(arc4random_uniform(2))
        let color = Color(random)!
        self.skin = color
        
        
        
        super.init(weight: 0, age: 0)
        if name.isEmpty {
            return nil
        }
    }
    
        required init() {
            self.name = "Hi"
            
            let random = Int(arc4random_uniform(2))
            let color = Color(random)!
            self.skin = color
            
            super.init(weight: 0, age: 0)
    }
}

let f = Friend(name: "a")
f!.name

class BestFriend : Friend {
    override init?(name: String) {
        if name.isEmpty {
            super.init()
        } else {
            super.init(name: name)
        }
        
    }
}
