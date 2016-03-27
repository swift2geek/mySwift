/*
let student1 = (name: "Alex", age: 20)
let student2 = (name: "Bob", age: 22)

student1.name
student2.name

let student3 = (nam: "Sam", ag: 23)
student3.nam
*/

class StudentClass {
    
    var name  : String
    var age : Int
    
    init() {
        name = "No name"
        age = 20
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

struct StudentStruct {
    
    var name  : String
    var age : Int
}

func addOneYear (student: StudentClass) {
    student.age++
}

func addOneYear (var student: StudentStruct) {
    student.age++
}

let stClass1 = StudentClass(name: "Bob", age: 18 )
stClass1.name = "Alex"
stClass1.age = 21

var stStruct1 = StudentStruct(name: "Sam", age: 24)

//stStruct.name = "Sam2"
//stStruct.age = 21

stStruct1

var stStruct2 = stStruct1
stStruct2.age = 25
stStruct2.name = "Samuel"

var stClass2 = stClass1

stClass2.age = 20
stClass2.name = "AAA"

stClass2.name
stClass2.age



stStruct1
print(stStruct1)
addOneYear(stStruct1)
print(stStruct1)

stClass1
print(stClass1)
addOneYear(stClass1)
stClass1
print(stClass1)

var arrayStructs = [stStruct1]
arrayStructs[0]
print(arrayStructs[0])
arrayStructs[0].age = 50
arrayStructs[0]
print(arrayStructs[0])

var arrayClasses = [stClass1]
arrayClasses[0]
print(arrayClasses[0])
arrayClasses[0].age = 50
arrayClasses[0]
print(arrayClasses[0])
print(stClass1)