import Cocoa

var greeting = "Hello, playground"

greeting = "hello new"

let name = "ted" // const
print(name)

let movies = """
Hello there!
Multiline string nice
"""
// join from left to right
var greetPeople = greeting + name
greetPeople = "\(greeting) \(name)! How are you?"

print(name.count) //len

//numbers
let smallNum = 10
let bigNum = 100_000_000 // _ = , to read number more easily (would be ignored)

print(smallNum.isMultiple(of: 2))
// double
let a = 1
let b = 2.0
//let c = Double(a) + b
let c = a + Int(b)
//CGFloat = double (old framework..)

//Bool
var isTrue = true
isTrue.toggle() //same as !isTrue (no return)


let temperatureInoC = 26.0
let temperatureInoF = temperatureInoC * 9 / 5 + 32
print("°C: \(temperatureInoC) °F: \(temperatureInoF)")
