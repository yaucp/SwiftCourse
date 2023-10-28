//: [Previous](@previous)

import Foundation

var greeting = "Hello, closure"

// assign functionality to a var/const

let sayHello = {
    print("Say Hello")
}

// empty params -> return void!
let greet: () -> Void = sayHello
greet()

// with params
// "in" comes after the params
let sayName = { (name: String) -> String in
    "Hi \(name)"
}

//Closure function only copies the types of params, but not param names! (i.e. no need to specify)

print(sayName("John"))

// Pass functions (first-class) to functions like sorted

let team = ["Suzanne", "Time", "Johm", "Angel"]
// No need to declare (a: String, b: String) -> bool in this case as the clousre in the sorted func MUST have this type
// bracket are not needed as well, looks sth similar to a for-loop
let sorted = team.sorted { a, b in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    }
        return a < b
}

// $0 = first param, $1 = second param
// shorthand syntax
let reverseSorted = team.sorted {$0 > $1}

print(sorted)
print(reverseSorted)

// Checkpoint 5
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let isOdd = {(num: Int) -> Bool in !num.isMultiple(of: 2)}

for number in luckyNumbers.sorted() where isOdd(number) {
    print("\(number) is a lucky number")
}
