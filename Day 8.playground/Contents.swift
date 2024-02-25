import UIKit

// MARK: Day 8: Functions pt2

//Provide default values for parameters
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
//characters.removeAll()
characters.removeAll(keepingCapacity: true)

print(characters.count)


//How to handle errors in functions
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

//Checkpoint
print("CHECKPOINT!")
enum SqrtError: Error {
    case outbounds, noroot
}

func findSqrt(of number: Int) throws -> String {
    if number > 10_000 || number < 1 {
        throw SqrtError.outbounds
    }

    var hasRoot = 0
    for i in 1...100 {
        let rootcomp = i * i
        if rootcomp == number {
            hasRoot = i
            break
        }
    }
    
    if hasRoot == 0 {
        throw SqrtError.noroot
    }
    
    return "Square root is: \(hasRoot)"
}

let sqrt = 65
do {
    let sqrtRes = try findSqrt(of: sqrt)
    print("Root: \(sqrtRes)")
} catch SqrtError.noroot {
    print("no root")
} catch SqrtError.outbounds {
    print("out of bounds")
} catch {
    print("There was an error.")
}
