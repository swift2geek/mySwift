//var level = 1
//level++
//let txt = "Sir Lancelot now gains level"
//print(txt, terminator:" ")
//print(level, terminator:" ")



//MARK: 03-11

let name = "Sir Lancelot"
let levelNew = 3
let b1 = name == "Sir Lancelot"
let b2 = levelNew >= 3
let gogogo = b1 && b2
print(gogogo)

//MARK: 04-10

var level = 4
var goalLevel = 80

if level == goalLevel {
    print("Your mission acomplished!")
} else {
    print("You have \(goalLevel - level) levels left")
}

(true && true) == false
false && false

//MARK: 05-13

var monsters = ["zombie", "gul", "Lich King", "vampire", "banshee"]
monsters += ["Cat", "Dog"]
monsters.append("elefant")
let monster = monsters[level]
print("Hero vs. " + monster)

//MARK: 08-10

var lancelotDamage = 3
var foeHealth = 8

print("Attack!", terminator: " ")
while foeHealth > 0 {
    foeHealth -= lancelotDamage
print("Lancelot begins his attack and his foe now has \(foeHealth) health points")
}
if foeHealth <= 0 {
    print("Sir Lancelot wins!")
}


//MARK: 13-18
enum Weapons {
    case Bow, Sword, Axe, Dagger
    func weaponInfo() -> String {
    switch self {
    case .Bow:
        return "gets Bow"
    case .Sword:
        return "gets Sword"
    case .Axe:
        return "gets Axe"
    case .Dagger:
        return "gets Dagger"
    }
  }
}
var wp = Weapons.Axe
print("Lancelot \(wp.weaponInfo())")


