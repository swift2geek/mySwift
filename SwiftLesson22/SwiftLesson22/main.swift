

var playground = true

class Student {
    
   unowned let teacher : Teacher
    //weak var teacher : Teacher?

    deinit {
        print("goodbye student")
    }
    
    init(teacher : Teacher) {
        self.teacher = teacher
    }
}

class Teacher {
    
    //var student : Student?
    var  dent
    
    init() {
        self.student = Student(teacher: self)
    }
    deinit {
        print("goodbye teacher")
    }
    
}

if playground {
    
    var teacher = Teacher()
    /*
    if playground {
        
//        var student = Student(teacher: teacher)
//        teacher.student = student
        var student = Student(teacher: teacher)
        teacher.student = student

    }*/

    print("exit playground")
}

var x = 10
var y = 20

var closure : () -> () = {
    [x,y] in
    print("\(x) \(y)")
}

var closure2 : (Int) -> Int = {[x,y] (a: Int) -> Int in
    print("\(x) \(y)")
    return a
}

closure2(00)

x = 30
y = 40

closure()

print("end")





//
//class Human {
//    var name = "a"
//}
//
//var h = Human()
//
//var closure : () -> () = {
//    [x] in
//print("\(x) \(y)")
//}
//
//захват лист


closure2(1)

x = 30
y = 40


closure2(1)