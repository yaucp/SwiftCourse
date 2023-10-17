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
 
//Switch
enum Weather {
    case sun, rain, cloud, snow
}
// Switch forces to be exhaustive, i.e. must check all the possible cases
// Only run the matched cases as well only in Swift! (no need to break)
let currentWeather = Weather.sun
switch currentWeather {
case .sun:
    print("Hot!")
//  add fallthrough if you want (similar to Golang!)
case .rain:
    print("Wet moist!")
case .cloud:
    print("cloudyyyyy")
case .snow:
    print("White christmas")
default:
    print("Defaultwooo")
    
}

//Ternary Conditional (one-line if)
//Same with JS
// cond ? true : false
