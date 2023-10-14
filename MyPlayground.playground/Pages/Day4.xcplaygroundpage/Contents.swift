//: [Previous](@previous)

import Foundation

var greeting = "Hello, Day 4"

let surname: String = "Lasso"
var score: Double = 0
// dict: [Int: String]
var teams = [String: Int]()
teams["Bear"] = 100
print(teams)

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light // style only has UIStype type
style = .system

let username: String
// blah blah blah logicssss
username = "@gifbale" // swift can let u initialize const later, cannot changed once initialised
// swift will show error when you use username before it's actually initialised (Nice!)

//Checkpoint 2:
var items = [String]()
items.append("123")
items.append("textttttt")
items.append("hahaha")
items.append("123")

print(items.count)
print(Set(items).count)
