//: [Previous](@previous)

import Foundation

let greeting = "Hello, Day 5"

//: [Next](@next)

// Conditional
let score = 85
if score > 80 {
    print("hello, there true!")
}

let username = "@lasso"

// "string".count
// Swift supports all language, can count each characters (emojis even!)
// counting strings not as efficient as it have to count each characetes separately
// isEmpty most efficient
if username.isEmpty {
    print("Oh no")
// elif = else if in Swift
} else {
    print("Hello there \(username)!")
}
 
