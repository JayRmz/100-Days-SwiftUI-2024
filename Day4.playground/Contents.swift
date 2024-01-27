import UIKit

var greeting = "Hello, playground"

// --MARK: How to use type annotations
//let surname = "Lasso"
//var score = 0

let surname: String = "Lasso"
var score: Int = 0
var scoreD: Double = 0


//String holds text:
let playerName: String = "Roy"

//Int holds whole numbers:
var luckyNumber: Int = 13

//Double holds decimal numbers:
let pi: Double = 3.141

//Bool holds either true or false:
var isAuthenticated: Bool = true

//Array holds lots of different values, all in the order you add them. This must be specialized, such as [String]:
var albums: [String] = ["Red", "Fearless"]

//Dictionary holds lots of different values, where you get to decide how data should be accessed. This must be specialized, such as [String: Int]:
var user: [String: String] = ["id": "@twostraws"]

//Set holds lots of different values, but stores them in an order that’s optimized for checking what it contains. This must be specialized, such as Set<String>:

var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

//Knowing all these types is important for times when you don’t want to provide initial values. For example, this creates an array of strings:

var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]

//Type annotation isn’t needed there, because Swift can see you’re assigning an array of strings. However, if you wanted to create an empty array of strings, you’d need to know the type:

var teams: [String] = [String]()
