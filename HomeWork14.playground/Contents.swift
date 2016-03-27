import Foundation

struct Date {
    
    var day : Int
    var month : Int
    var year : Int
    
    var now : Date {
        return Date(day: 15, month: 1, year: 2016)
    }
    
    var yearsBeforeNow : Int {
        return now.year - year
    }
}

struct Student {
    
    var firstName : String {
        
        willSet {
            print("will set name " + newValue + " instead of " + firstName)
        }
        didSet {
            print("did set " + firstName + " instead of " + oldValue)
            
            firstName = firstName.capitalizedString
        }
    }
    
    var lastName : String {
        
        didSet {
            lastName = lastName.capitalizedString
    }
}
    
    var fullName : String {
        get {
        return firstName + " " + lastName
        }
        set {
            print("fullName wants to be set to " + newValue)
            
            let words = newValue.componentsSeparatedByString(" ")
            
            if words.count > 0 {
                firstName = words[0]
            }
            
            if words.count > 1 {
                lastName = words[1]
            }
        }
    }
    
    var birthDay : Date
    
    var age : Int {
        return birthDay.yearsBeforeNow
    }
    
    static let startStudy = 6
    var study : Int {
        return age > Student.startStudy ? age - Student.startStudy : 0
    }
}

var student = Student(firstName: "Vlad", lastName: "Vasiliev", birthDay: Date(day: 15, month: 3, year: 1983))
student.fullName
student.firstName = "Bob"
student.age
student.study

// 3

struct Point {
    var x : Double
    var y : Double
}

struct Line {

    var a : Point
    var b : Point
    
    var middle : Point {
        get {
            return Point(x: (a.x + b.x)/2, y: (a.y + b.y)/2)
        }
    }
    
    var length : Double {
       return sqrt(pow((b.x - a.x), 2) + pow((b.y - a.y), 2))
    }
}

var l1 = Line(a: Point(x: 1, y: 3), b: Point(x: 3, y: 1))

l1.middle
print(l1.middle)
print(l1.length)


//4