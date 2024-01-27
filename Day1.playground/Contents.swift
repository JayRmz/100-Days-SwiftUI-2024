import UIKit
/**
 Day 1 Swiftui
 */
var greeting = "Hello, playground"

// --MARK: How to create variables and constants
var name = "Ted"
name = "Rebecca"
name = "Keeley"

let character = "Daphne"
//character = "Eloise"
//character = "Francesca"

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

let managerName = "Michael Scott"
let dogBreed = "Samoyed"
let meaningOfLife = "How many roads must a man walk down?"

// --MARK: How to create strings
let actor = "Denzel Washington"
let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"
let quote = "Then he tapped a sign saying \"Believe\" and walked away."
print(actor.count)
let nameLength = actor.count
print(nameLength)
print(result.uppercased())


print(filename.hasSuffix(".jpg"))

// --MARK: How to store whole numbers
let score = 10

var reallyBig = 100_000_000
reallyBig = 1_00__00___00____00
let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
var counter = 10
counter = counter + 5
print(score)

counter *= 2
print(counter)
counter -= 10
print(counter)
counter /= 2
print(counter)
let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 3))

// --MARK: How to store decimal numbers
let numberD = 0.1 + 0.2
print(numberD)
let a = 1
let b = 2.0
//let c = a + b
let c = Double(a) + b

var rating = 5.0
rating *= 2
