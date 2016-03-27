
extension Int {
    
    var isEven : Bool {
        return self % 2 == 0
    }
    
    var isOdd : Bool {
        return !isEven
    }
    
    enum EvenOrOdd {
        case Even
        case Odd
    }
    
    var evenOrOdd : EvenOrOdd {
        return isEven ? .Even : .Odd
    }
    
    var isNegative : Bool {
        return self < 0
    }
    
    var isPositive : Bool {
        return self > 0
    }
    
    var isFalse : Bool {
        switch self {
        case 0: return false
        default: return true
        }
    }
    
    var countNum : Int {
        return (String(self)).characters.count
    }
    func pow(value: Int) -> Int {
        
        var temp = self
        for _ in 1..<value {
            temp *= self
        }
        return temp
    }
    
   mutating func powTo(value: Int) {
        self = pow(value)
    }
    
    var binaryString : String {
        
        var result = ""
        for i in 0..<8 {
            result = String(self & (1 << i) > 0) + result
        }
        
        return result
    }
    
}

extension String {
    init(_ value: Bool) {
        self.init(value ? 1 : 0)
    }
    
    subscript(start: Int, length: Int) -> String {
        let start = self.startIndex.advancedBy(start)
        let end = start.advancedBy(length)
        let range = Range(start: start, end: end)
        return self[range]
    }
}

extension Int.EvenOrOdd {
    var string : String {
        switch self {
        case Even: return "Even"
        case Odd: return "Odd"
        }
    }
}

var a = 5

if a % 2 != 0 {
    print("nechet")
}

var d = 30999
d.countNum

var c = 0
c.isFalse

if a.isOdd {
    print("nechet")
}

a.evenOrOdd.string
a
a.pow(6)
a.powTo(5)
a = 8
a.binaryString

let s = "Hello, World!"

s[0,5]
var b = -8
b.isNegative
b.isPositive
