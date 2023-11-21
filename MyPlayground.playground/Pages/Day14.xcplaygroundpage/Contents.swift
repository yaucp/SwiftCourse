//: [Previous](@previous)

import Foundation

var greeting = "Hello, options"

// Optionals
let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]
let peachOpposites = opposites["Peach"] // String?

// if-let pattern:
// assigns dict values to var, while checking if it's nil(null...) or not!!!!
if let marioOpposites = opposites["Mario"] {
    print("Mario's opposites is \(marioOpposites)")
}

// unwrapp numb
var number: Int? = nil
func square(_ number: Int) -> Int {
    number * number
}
number = 50
if let number = number {
    // runs if number is not nil
    // number MUST have Int (valid!) wow!!
    // number is local var, i.e. Shadowing --> replace outward number
    print(square(number))
}

// Guarding
//guard let number = number else {
////    runs only when number is nil
//    print("BRUH")
//}
func square2(of number: Int?) -> Int {
    guard let number = number else {
        // runs when the number is nil
        print("number is nil!")
        // MUST require function to return!!!!!!!! if guard check fails
        return 0
    }
    // number is not nil now!!
    return number * number
}

// Nil coalescing
// like JS
let ghostOpposites = opposites["Ghost"] ?? "N/A"
print(ghostOpposites)

// Optional Chaining
// ?. (~ to JS)
// If is nil, then it's nil....
let chosen = opposites.values.randomElement()?.uppercased() ?? "Empty"
print(chosen)

// function failure with optional
enum UserError: Error {
    case badId, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed // always thorw error
}

// try?: if the function throws error, return nil anyway
if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

// Checkpoint 9
func getRandomFromArray(_ numbers: [Int]?) -> Int {
    numbers?.randomElement() ?? Int.random(in: 1...100)
}

let test = [199, 290, 300]
getRandomFromArray(test)
getRandomFromArray(nil)
