/*
3. Есть 5 классов: люди, крокодилы, обезьяны, собаки, жирафы. (в этом задании вы будете создавать не дочерние классы, а родительские и ваша задача создать родительский таким образом, что бы группировать эти 5).
- Создайте по пару объектов каждого класса.
- Посчитайте присмыкающихся (создайте масив, поместите туда присмыкающихся и скажите сколько в нем объектов)
- Сколько четвероногих?
- Сколько здесь животных?
- Сколько живых существ?
*/

class Creature {
}

class Animal : Creature {
}

class Reptile : Animal {
}

class fourLegged : Animal {
}


class Human: Creature {
}


class Croc : Reptile {
}


class Monkey: Animal {
}


class Dog: fourLegged {
}

class Giraffe: fourLegged {
}

var woman = Human()
var man = Human()

var smallCroc = Croc()
var bigCroc = Croc()

var shimpanze = Monkey()
var kingShimpanze = Monkey()

var colly = Dog()
var york = Dog()

var giraffe1 = Giraffe()
var giraffe2 = Giraffe()

var count = (creatures: 0, animals: 0, reptiles: 0 , fourLegged: 0)
var zoo = [Human(), Croc(), Monkey(), Dog(), Giraffe()]

for value in zoo {
    
    count.creatures++
    
    if value is Animal {
        count.animals++
    }
    
    if value is Reptile {
        count.reptiles++
    }
    
    if value is fourLegged {
        count.fourLegged++
    }
}

print("total creatures: \(count.creatures)", "total animals: \(count.animals)", "total reptiles: \(count.reptiles)", "total fourLegged: \(count.fourLegged)")