import UIKit

var greeting = "Hello, playground"
// --MARK: How to store truth with Booleans
let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let number = 120
print(number.isMultiple(of: 3))

let isMultiple = 120.isMultiple(of: 3)
var gameOver = false
print(gameOver)

gameOver.toggle()
print(gameOver)

// --MARK: How to join strings together
let firstPart = "Hello, "
let secondPart = "world!"
let greetingTwo = firstPart + secondPart


let luggageCode = "1" + "2" + "3" + "4" + "5"
let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)
print("5 x 5 is \(5 * 5)")
