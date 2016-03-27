/* let MaxNameLength = 20 // global constant start from Capital letter and Camel Case


class Human {
    
    var name : String {
        didSet {
            if name.characters.count > MaxNameLength {
                name = oldValue
            }
        }
    }
    
    lazy var storyOfMyLife = "This is a story of my entire life..."
 
    class var maxAge : Int {
        return 100
    }
    
    var age : Int {
        didSet {
            if age > Human.maxAge {
                age = oldValue
            }
        }
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

enum Direction {

    static let enumDescription = "Directions in the game"
    
    case Left
    case Right
    case Top
    case Bottom
    
    var isVertical : Bool {
        return self == .Top || self == .Bottom
    }
    
    var isHorizontal : Bool {
        return !isVertical
    }
}

let d = Direction.Right

d.isVertical
d.isHorizontal

Direction.enumDescription

struct Cat {
    
    var name : String {
        didSet {
            if name.characters.count > MaxNameLength {
                name = oldValue
            }
        }
    }
    
    static let maxAge = 20
    
    static var totalCats = 0
    
    var age : Int {
        didSet {
            if age > Cat.maxAge {
                age = oldValue
            }
        }
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        
        Cat.totalCats++
    }
}

let human = Human(name: "Val", age: 33)
print(human)
human.storyOfMyLife
human

var cat = Cat(name: "Puma", age: 10)

human.age = 1000
cat.age = 50

Cat.totalCats

let cat1 = Cat(name: "Whiten1", age: 10)
let cat2 = Cat(name: "Whiten2", age: 10)

Cat.totalCats

cat.name = "askldjadjal;ksdj"
print(cat.name.characters.count)
*/

//1. Создать структуру “Описание файла” содержащую свойства:
//- путь к файлу
//- имя файла
//- максимальный размер файла на диске
//- путь к папке, содержащей этот файл
//- тип файла (скрытый или нет)
//- содержимое файла (можно просто симулировать контент)
//
//Главная задача - это использовать правильные свойства там, где нужно, чтобы не пришлось хранить одни и те же данные в разных местах и т.д. и т.п.




struct fileDescription {
    
    let maxFileSize = 50
    var fileName : String
    var folderPath : String
    var isHidden : Bool
    var content : String
    var path : String {
        return folderPath + "/" + fileName
    }
}



var file = fileDescription(fileName: "file.iso", folderPath: "/home/var", isHidden: false, content: "asdasdasd")

file.path
file.content
file.maxFileSize



//2. Создайте энум, который будет представлять некую цветовую гамму. Этот энум должен быть типа Int и как raw значение должен иметь соответствующее 3 байтное представление цвета. Добавьте в этот энум 3 свойства типа: количество цветов в гамме, начальный цвет и конечный цвет.

enum Color : Int {
    
    static let colorQty = 3
    static let colorStart = Color.Red
    static let colorEnd = Color.Blue

    
    case Red = 0xff0000
    case Green = 0x00ff00
    case Blue = 0x0000ff
}


//3. Создайте класс человек, который будет содержать имя, фамилию, возраст, рост и вес. Добавьте несколько свойств непосредственно этому классу чтобы контролировать:
//- минимальный и максимальный возраст каждого объекта
//    - минимальную и максимальную длину имени и фамилии
//        - минимально возможный рост и вес
//            - самое интересное, создайте свойство, которое будет содержать количество созданных объектов этого класса

let MaxNameLength = 10
let MaxSurnameLength = 15
var TotalHuman : Int = 0


class Human {
    
    var name : String {
        didSet {
            if name.characters.count > MaxNameLength {
                name = oldValue
            }
        }
    }
    
    var surName : String {
        didSet {
            if surName.characters.count > MaxSurnameLength {
                surName = oldValue
            }
        }
    }
    
    lazy var storyOfMyLife = "This is a story of my entire life..."
    
    class var maxAge : Int {
        return 100
    }
    
    var age : Int {
        didSet {
            if age > Human.maxAge {
                age = oldValue
            }
        }
    }
    
    class var maxWeight : Int {
        return 150
    }
    
    var weight : Int {
        didSet {
            if weight > Human.maxWeight {
                weight = oldValue
            }
        }
    }
    
    class var maxHeight : Int {
        return 200
    }
    
    var height : Int {
        didSet {
            if height > Human.maxHeight {
                height = oldValue
            }
        }
    }

    
    init(name: String, surName: String, age: Int, weight: Int, height: Int) {
        self.name = name
        self.surName = surName
        self.age = age
        self.weight = weight
        self.height = height
        TotalHuman++
    }
}
