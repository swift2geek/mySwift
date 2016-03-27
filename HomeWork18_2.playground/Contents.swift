class Transport {
    
    var speed : Double {
        return 100
    }
    var capacity : Int {
        return 5
    }
    var oneWayCost : Double {
        return 25
    }
    //как быстро мы их перевезем, стоимость всех перевозок и кол-во перевозок
//    func costForDistance(distance: Double, andPassangers: Int) -> (price: Double, time: Double) {
//
    func timeForDistance(distance: Double, andPassangers: Int) -> (time: Double, price: Double) {
        var time = distance / speed
        var price : Double = oneWayCost * Double(andPassangers)
        return (time, price)
    }
}

class Heli : Transport {
    
    override var speed : Double {
        return 500
    }
    
    override var capacity : Int {
        return 8
    }
    
    override var oneWayCost : Double {
        return 2500
    }
}

class Ship : Transport {
    
    override var speed : Double {
        return 40
    }
    
    override var capacity : Int {
        return 5000
    }
    
    override var oneWayCost : Double {
        return 800
    }
}

class Car : Transport {
    
    override var speed : Double {
        return 120
    }
    
    override var capacity : Int {
        return 4
    }
    
    override var oneWayCost : Double {
        return 120
    }
}

class Train : Transport{
    
    override var speed : Double {
        return 90
    }
    
    override var capacity : Int {
        return 1000
    }
    
    override var oneWayCost : Double {
        return 20
    }
}


let t1 = Train()
t1.capacity
t1.speed
t1.oneWayCost
t1.timeForDistance(1900, andPassangers: 1000)

let c1 = Car()
c1.timeForDistance(1900, andPassangers: 1000)

let h1 = Heli()
h1.timeForDistance(1900, andPassangers: 1000)

let s1 = Ship()
s1.timeForDistance(1900, andPassangers: 1000)


