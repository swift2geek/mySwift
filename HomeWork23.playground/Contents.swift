class Female : Human {
    
    func instruct() {
    print("hey you - Move sofa!")
    }
}

class Male : Human {
    
    func work() {
        print("yes mrs")
    }
}

class Pet {
    
    func cry() -> String? {
    return nil
    }
}

class Dog : Pet {
    
    override func cry() -> String? {
        return "gaf gaf"
    }
}

class Cat : Pet {

    override func cry() -> String? {
        return "meuuuuu"
    }
}

    class Parrot : Pet {
    
        override func cry() -> String? {
            return "popka durak"
        }
}

class Human {
    
    var father : Male?
    var mother : Female?
    var brothers : [Male]?
    var sisters : [Female]?
    
    var pets : [Pet]?
    
    init() {}
}

func generate() -> (Human, [Human]) {
    
    var human = Human()
    
    let males = [Male(), Male(), Male()]
    let females = [Female(), Female(), Female(), Female(), Female()]
    
    human.father = males[0]
    human.mother = females[0]
    
    //uncles
    
    human.mother?.brothers = [males[1], males[2]]
    
    //aunts
    
    human.mother?.sisters = [females[1]]
    human.father?.sisters = [females[2], females[3], females[4]]
    
    //pets 
    
    human.father?.pets = [Dog()]
    human.mother?.brothers?.last?.pets = [Cat(), Parrot(), Parrot()]
    
    return (human, males as [Human] + females)
}


let (human, humans) = generate()

var (cnt, cry) = ((aunts: 0, uncles: 0, males: 0, females: 0, dogs: 0, cats: 0, parrots: 0), "")

cnt.uncles += human.mother?.brothers?.count ?? 0
cnt.uncles += human.father?.brothers?.count ?? 0
cnt.aunts += human.mother?.sisters?.count ?? 0
cnt.aunts += human.father?.brothers?.count ?? 0

for human in humans {
    
    if let human = human as? Male {
        cnt.males++
        human.work()
        
    } else if let human = human as? Female {
        
        cnt.females++
        human.instruct()
    }
    
    if human.pets == nil {
        continue
    }
    
    for pet in human.pets! {
        
        switch pet {
        case is Dog: cnt.dogs++
        case is Cat: cnt.cats++
        case is Parrot: cnt.parrots++
        default: break
        }
        
        cry += (pet.cry() ?? "") + "\n"
    }
}

print("\n\(cry)")
print("aunts: \(cnt.aunts) uncles: \(cnt.uncles)")
print("males: \(cnt.males) females: \(cnt.females)")
print("dogs: \(cnt.dogs) cats: \(cnt.cats) parrots: \(cnt.parrots)")
