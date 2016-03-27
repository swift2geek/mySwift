//
//  main.swift
//  HomeWork22
//
//  Created by Vladimir Valter on 16.02.16.
//  Copyright © 2016 Vladimir Valter. All rights reserved.
//

import Foundation


//Рассмотрим такую ситуацию: есть семья - папа, мама и дети.
//Папа глава семьи, у него есть Мама, Мама контролирует детей, т.е. иерархия: Папа - Мама - Дети, Дети на одном уровне.
//Дети могут вызывать друг друга и они могут искать пути, как общаться с другими Детьми, например говорить "дай игрушку", спрашивать Маму: "Мама, дай конфетку", общаться с Папой: "Папа, купи игрушку".
//Вся эта иерархия лежит в объекте класса Семья, у которого есть методы, например распечатать всю Семью, т.е. метод вернёт массив всех членов Семьи.
//У Папы есть 3 кложера (closures) - 1. когда он обращается к Семье - распечатать всю Семью, 2. распечатать Маму, 3. распечатать всех Детей.
//Создать всю иерархию со связями. При выходе из зоны видимости все объекты должны быть уничтожены. Используем Command-Line Tool.

class Father {
    weak var family : Family!
    var mother : Mother!
    
    
    lazy var printFamily: () -> () = {[unowned self] in
        self.printMe()
        self.printMother()
        self.printChildren()
    }
    
    lazy var printMother: () -> () = {[unowned self] in self.mother.printMe()}
    
    lazy var printChildren: () -> () = {[unowned self] in self.family.printChildren()}
    
    func buyAToy() {
        print("Daddy please buy a toy")
    }
    
    func printMe() {
        print("Im a father")
    }
    
    deinit {
        print("father goodbye")
    }
}


class Mother {
    weak var father : Father!
    var children = [Child]()
    
    func giveACandy() {
        print("Mother please give me a candy")
    }
    
    func printMe() {
        print("Im a mother")
    }
    
    deinit {
        print("goodbye mother")
    }
    
}


class Child {
    weak var father : Father!
    weak var mother : Mother!
    let name : String
    
    func giveAToy() {
        print("Child \(name), please give me a toy")
    }
    
    func askMother() {
        mother.giveACandy()
    }
    
    func askFather() {
        father.buyAToy()
    }
    
    func askChildren() {
        for child in mother.children {
            if child === self {
                continue
            }
            child.giveAToy()
        }
    }
    
    init(name: String, mother: Mother, father: Father) {
        self.name = name
        self.father = father
        self.mother = mother
    }
    
    func printMe() {
        print("i'm a child \(name)")
    }
    
    deinit {
        print("goodbye child \(name)")
    }
}

class Family {
    let father : Father!
    let mother : Mother!
    var children = [Child]()
    
    func printMe() {
        print("family members:")
        father.printFamily()
    }
    
    func printChildren() {
        for child in children {
            child.printMe()
        }
    }
    
    func play() {
        if let child = children.first{
            print("\nchild \(child.name) ask:")
            child.askChildren()
            child.askFather()
            child.askMother()
        }
    }
    
    init(numberOfKids num: Int) {
        father = Father()
        mother = Mother()
        father.family = self
        
        (father.mother, mother.father) = (mother, father)
        
        for i in 1...num {
            children.append(Child(name: "#\(i)", mother: mother, father: father))
        }
        mother.children = children
    }
    
    deinit {
        print("family goodbye")
    }
}

var family: Family! = Family(numberOfKids: 3)
family.printMe()
family.play()

print("\nstart deinit")
family = nil