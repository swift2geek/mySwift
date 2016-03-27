import Foundation

class Artist {
    var firstName : String = ""
    var lastName : String = ""
    var skill : String = "artist"
    
    func action() -> String {
        return firstName + lastName + skill
    }
}

class Dancer : Artist {
    override func action() -> String {
        return skill + " " + firstName + " " + lastName + "💃🏾"
    }
}

class Singer : Artist {
    override func action() -> String {
        return skill + " " + firstName + " " + lastName + " " + "🗣"
    }
}

class Musician : Artist {
    override func action() -> String {
        return skill + " " + firstName + " " + lastName + " " + "🎵"
    }
}

class Painter : Artist {
    override func action() -> String {
        return skill + " " + firstName + "arkanovich" + " " + lastName + " " + "📝"
    }
}


let singer = Singer()
singer.firstName = "Artem"
singer.lastName = "Kapotin"
singer.action()


let painter = Painter()
painter.skill = "painter"
painter.firstName = "Alex"
painter.lastName = "Kobev"
painter.action()

let musician = Musician()
musician.firstName = "Richard"
musician.lastName = "Bahh"
musician.skill = "musician"
musician.action()

let breakDancer = Dancer()
breakDancer.firstName = "Stas"
breakDancer.lastName = "Skopenko"
breakDancer.skill = "breakDancer"
breakDancer.action()

let array = [singer, painter, musician, breakDancer]

for value in array {
    print(value.action())
}
