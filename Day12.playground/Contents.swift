import UIKit

// MARK: Day 12 - classes

// How to create your own classes
class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

// How to make one class inherit from another
class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()

// How to add initializers for classes
class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)

// How to copy classes
class User {
    var username = "Anonymous"
    func copy() -> User { // This is a deep copy function, in order for us to have same start data but changes won't affect the original.
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
//var user2 = user1
var user2 = user1.copy()
user2.username = "Taylor"

print(user1.username)
print(user2.username)

// How to create a deinitializer for a class
class DeinitUser {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user = DeinitUser(id: i)
    print("User \(user.id): I'm in control!")
}

var users = [DeinitUser]()

for i in 1...3 {
    let user = DeinitUser(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")

// How to work with variables inside classes
class UserVar {
    var name = "Paul"
}

var user = UserVar()
user.name = "Taylor"
print(user.name)
user = UserVar()
print(user.name)

// Checkpoint 7
class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
   
    func speak() {
        print("Woof!")
    }
}

class Cat: Animal {
    let isTame: Bool
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("Miau!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Corgi woof!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("wif!")
    }
}

class Persian: Cat {
    override func speak() {
        print("miiiaaaau")
    }
}

class Lion: Cat {
    override func speak() {
        print("RAAAAAAWR")
    }
}


let newCorgi = Corgi(legs: 4)
newCorgi.speak()

let newPoodle = Poodle(legs: 4)
newPoodle.speak()

let newPersian = Persian(isTame: true, legs: 4)
newPersian.speak()
print(newPersian.isTame)

let newLion = Lion(isTame: false, legs: 4)
newLion.speak()
print(newLion.isTame)
