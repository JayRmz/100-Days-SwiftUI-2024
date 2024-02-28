import UIKit

// MARK: 100 Days of SwiftUI
// MARK: Day 13 - Protocols and Extensions

// How to create and use protocols
protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    let name = "Car"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }
    
    func openSunroof() {
        print("It's a nice day!")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)

struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}

let bike = Bicycle()
commute(distance: 50, using: bike)

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

getTravelEstimates(using: [car, bike], distance: 150)


// How to use opaque return types
func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())


// How to create and use extensions
var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmed()

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}



struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
    
    
}

let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

// How to create and use protocol extensions
let guests = ["Mario", "Luigi", "Peach"]

if guests.isEmpty == false {
    print("Guest count: \(guests.count)")
}
if !guests.isEmpty {
    print("Guest count: \(guests.count)")
}

extension Array {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()


// Checkpoint 8
protocol Building {
    var rooms: Int { get }
    var price: Int { get }
    var agent: String { get }
    func salesSummary()
}

struct House: Building {
    var rooms: Int
    var price: Int
    var agent: String

    func salesSummary() {
        print("Here we have a beautiful House with \(rooms) rooms. The price will be \(price) Dollars and your agent is \(agent)")
    }
}

extension House {
    init(rooms: Int, agent: String) {
        self.rooms = rooms
        self.price = rooms * 50_000
        self.agent = agent
    }
}

struct Office: Building {
    var rooms: Int
    var price: Int
    var agent: String

    func salesSummary() {
        print("Here we have a beautiful Office with \(rooms) rooms. The price will be \(price) Dollars and your agent is \(agent)")
    }
}

let house = House(rooms: 6, price: 150_000, agent: "Maxi")
house.salesSummary()

let office = Office(rooms: 2, price: 50_000, agent: "Maxi")
office.salesSummary()

let extHoues = House(rooms: 5, agent: "Maxi")
extHoues.salesSummary()
