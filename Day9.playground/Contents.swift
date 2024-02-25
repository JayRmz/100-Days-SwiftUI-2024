import UIKit

//MARK: Day 9: Closures

//How to create and use closures
func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
greetCopy()

//let sayHello = {
//    print("Hi there!")
//}
//
//sayHello()

let sayHello = { (name: String) -> String in
    "Hi \(name)!"
}

sayHello("Jay")

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)