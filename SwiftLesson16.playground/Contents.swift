struct Point {
    var x : Int
    var y : Int
    
    /*
    mutating func moveByX(x: Int, andY y: Int) {
       self.x += x
        self.y += y
    }*/
    
    mutating func moveByX(x: Int, andY y: Int) {
        self = Point(x: self.x + x, y: self.y + y)
    }
}

enum Color {
    
    static func numberOfElements() -> Int {
        return 2
    }
    
    case White
    case Black
    
    mutating func invert() -> Color {
        if self == White {
            self = Black
        } else {
            self = White
        }
       // self = self == White ? Black : White
        return self
    }
}

var c = Color.White

c
c.invert()
c.invert()
c.invert()

Color.numberOfElements()

func move(var point point: Point, byX x: Int, andY y: Int) -> Point {
    point.x += x
    point.y += y
    return point
}

var p1 = Point(x: 1, y:1)
var p2 = Point(x: 2, y:2)

//move(p, 2, 4)
//move(p, byX: 2, andY: 4)
//p = move(point: p, byX: 2, andY: 4)
//print(p)

//p.move(byX: <#T##Int#>, andY: <#T##Int#>)
p1.moveByX(5, andY: 7)

print(p1)
print(p2)