class Human {
    
    
    var firstName : String = ""
    var lastName : String = ""
    var fullName : String {
        return firstName + " " + lastName
    }
    
    func sayHello() -> String {
        return "Hello"
    }
}
class SmartHuman : Human {
    
}
class Student : SmartHuman {
    override func sayHello() -> String {
        return super.sayHello() + " my friend"
    }
}

class Kid: Human {
    override func sayHello() -> String {
        return "agu"
    }
    
    override var fullName : String {
        return firstName
    }
    
    override var firstName : String {
        set {
            super.firstName = newValue + " :)"
        }
        get {
            return super.firstName
        }
    }
    
    override var lastName : String {
        didSet {
            print("new Value " + self.lastName)
        }
    }
}

let human = Human()
human.firstName = "Vladimir"
human.lastName = "Valter"
human.sayHello()


let student = Student()
student.firstName = "Max"
student.lastName = "Mix"
student.sayHello()


let kid = Kid()

kid.firstName = "Baba"
kid.lastName = "eorfj"
kid.fullName
kid.sayHello()


let array = [kid, student, human]

for value in array {
    print(value.sayHello())
}
