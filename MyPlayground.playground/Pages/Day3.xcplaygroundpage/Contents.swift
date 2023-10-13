//: [Previous](@previous)

import Foundation

var greeting = "Hello, day3!"

//Items in an array all have the SAME type (0-based index)
//Var = list
var singer = ["John", "Paul"]
//OR
//var singer = Array<String>()
singer.append("Swift")
singer.append("Martin")

//fixed array. cannot update the elements
let numbers = [4,3,5,12,52,5]
var test = [Int]() // declare empty array with only int OR with Array<Int>()

singer.remove(at: 2)
singer.contains("Swift") // should be false

//Reverse
print(singer.reversed())
// Keeps the original singer intact but "rmb" it is reversed


// Dictonary
let employee = [
    "name": "Taylor Swift",
    "location": "Hong Kong",
    "job": "Software engineer"
]
print(employee["name"]) // Have warning since we dont know the key actually exists or not!, prints an optional obj instead
print(employee["name", default: "Unknown"])

var heights = [String: Int]() //decalre type + empty dict
heights["Shaq"] = 200
heights["Angel"] = 170

// Set
let actors = Set([
    "Samuel",
    "Daniel"
])
print(actors)

// OR
var actorsNew = Set<String>()
actorsNew.insert("Samuel L Jackson")

//ENUM nice
//looks much better than JS
enum Weekday {
    case Monday, Tuesday
    case Wednesday
}
var day = Weekday.Tuesday
day = .Monday // day must have the same enum type, no need to specify!!
