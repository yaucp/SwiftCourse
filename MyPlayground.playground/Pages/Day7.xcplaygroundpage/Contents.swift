//: [Previous](@previous)

import Foundation

var greeting = "Hello, Day 7, functions!"

func printHellos(name: String, age: Int){
    print("Hello1 \(name). You're \(age)")
    print("Hello2")
}

//optional to call the function w/o the parameter name
//easier to read
printHellos(name: "thomas", age: 13)

//Return type, enforced!
func rollDice() -> Int {
    return Int.random(in: 1...6)
}
print(rollDice())

func sameLetters(a: String, b: String) -> Bool {
    a.sorted() == b.sorted() //no return needed as this expression must return sth
}

print(sameLetters(a: "bbc", b: "cbb"))

//return multiple values
func getUser() ->(firstName: String, lastName: String) { //if no var names provided to the tuple, we just use "user.0" (like index)
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
let (firstName, lastName) = getUser() // destructure
print("Hello \(user.firstName) \(user.lastName)") //no need to add default prop compared to dictionary


func isUppercase(_ string: String) -> Bool { // underscore in front of var naming tells Swift not to provide external param name when calling the function
    string == string.uppercased()
}
print(isUppercase("123"))

func printTimesTable(for number: Int) { // for = external name, number=internal name
    for i in 1...12 {
        print("\(i) × \(number) is \(i * number)")
    }
}

printTimesTable(for: 5)
