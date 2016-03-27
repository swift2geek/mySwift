import Foundation

struct Student{
    
    var firstName : String {
        
        willSet {
            print("will set" + newValue + " instead of" + firstName)
        }
        didSet {
            print("did set" + firstName + " instead of" + oldValue)
            
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
}

var student = Student(firstName: "Vladimir", lastName: "Voronkov")
student.firstName
student.lastName

student.firstName = "Bob"

student.fullName = "Ivan Ivanov"
student.fullName
