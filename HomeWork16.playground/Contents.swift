//1. Создайте тип Комната. У комнаты есть размеры W на H. И создайте тип Персонаж. У негоесть координата в комнате X и Y. Реализуйте функцию, которая красивенько текстом будет показывать положение персонажа в комнате

struct Room {
    var width : Int
    var length : Int
}

struct Point {
    var x : Int
    var y : Int
    mutating func moveByX(var x: Int, andY y:Int) {
        self = Point(x: self.x + x, y: self.y + y)
    }
}

enum Direction {
    case Left, Right, Up, Bottom
}

class Human {
    class var name : String {
        return "🏃🏻"
    }
    class var car : String {
        return "🚙"
    }
    class var garage : String {
        return "🏤"
    }
    
    var position : Point {
    didSet {
        if position.x >= room.width || position.x <= 1 {
            position = oldValue
        }
        if position.y >= room.width || position.y <= 1 {
            position = oldValue
        }
    }
}
    var car : Point {
        didSet {
            if car.x >= room.width || car.x <= 1 {
                car = oldValue
            }
            if car.y >= room.width || car.y <= 1 {
                car = oldValue
        }
    }
}
    var garage : Point {
        didSet {
            if garage.x >= room.width || garage.x <= 1 {
                garage = oldValue
            }
            if garage.y >= room.width || garage.y <= 1 {
                garage = oldValue
        }
    }
}
    var room : Room
        
        init (position: Point, inRoom room: Room, withCar car: Point, andGarage garage: Point ) {
            self.position = position
            self.room = room
            self.car = car
            self.garage = garage
        }
    
        func move(direction: Direction, var position: Point) -> Point{
            switch direction {
            case .Left : position.moveByX(-1, andY: 0)
            case .Right : position.moveByX(1, andY: 0)
            case.Bottom : position.moveByX(0, andY: -1)
            case.Up : position.moveByX(0, andY: 1)
            default: break
            }
            return position
        }
        
        func moveHuman(direction: Direction) {
            var oldCarPosition = car
            var oldPosition = position
            position = move(direction, position: position)
            if position.x == car.x && position.y == car.y {
                car = move(direction, position: car)
                if oldCarPosition.x == car.x && oldCarPosition.y == car.y {
                position = oldPosition
            } else if car.x == garage.x && car.y == garage.y {
                print("u win!")
            }
        }
    }

    func showMe() {
        for i in 1...room.width {
            
           
            for j in 1...room.length {
                switch (i,j) {
                case (let x, let y) where x == position.x && y == position.y:
                    print(" \(Human.name)", terminator:"")
                case (let x, let y) where x == garage.x && y == garage.y:
                    print(" \(Human.garage)", terminator:"")
                case (let x, let y) where x == car.x && y == car.y:
                    print(" \(Human.car)", terminator:"")
                case (let y, let x) where x == 1 || y == 1:
                    print(" ◼️", terminator:"")
                case (let y, let x) where x == room.width || y == room.length:
                    print(" ◼️", terminator:"")
                default : print(" ◻️", terminator:"")
                    }
                }
          print(" ")
            }
       print(" ")
        }
}

let man = Human(position: Point(x: 3, y: 4), inRoom: Room(width: 6, length: 6), withCar: Point(x: 3, y: 3), andGarage: Point(x: 5, y: 2))
man.showMe()
man.moveHuman(.Up)
man.showMe()
man.moveHuman(.Left)
man.showMe()
man.moveHuman(.Right)
man.showMe()
man.moveHuman(.Right)
man.showMe()
man.moveHuman(.Right)
man.showMe()
man.moveHuman(.Bottom)
man.showMe()
