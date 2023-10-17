//: [Previous](@previous)

import Foundation

var greeting = "Hello, day 6"
let platforms = ["iOS", "macOS", "tvOS"]

for os in platforms{
//    loop body
    print("Swift works great on \(os).")
}

//same with kotlin
for i in 1...10 {
    print("\(i)th time")
}

for i in 1..<5 {
//    5 is excluded
    print("\(i) th, but excluded")
}

for _ in 1..<5 {
    print("lah lah lyrics")
}

//While loop!
var roll = 0
while roll != 20 {
    roll = Int.random(in: 1...20)
    print(roll)
}
print("Congrats!")

//Same break/continue keyword

// labeled statement
// to name certain part of the code
// in this case, the outermost loop is named outerLoop to break all loops
let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]
outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}

//Checkpoint 3
//FizzBuzz
var output = String()
for num in 1...100 {
    output = ""
    if num.isMultiple(of: 3) {
        output += "Fizz"
    }
    if num.isMultiple(of: 5) {
        output += "Buzz"
    }
    print(output == "" ? num : output)
}
