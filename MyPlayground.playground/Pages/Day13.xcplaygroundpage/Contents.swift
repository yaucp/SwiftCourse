import Foundation

var greeting = "Hello, protocol!"

// Protocols!!!
// ~ to interface/abstract
// guranatees the struct/class to have these properties and methods
protocol Vehicle {
    // name can only be getted, not setted
    // no default value is allowed
    var name: String {get}
    var currentPassengers: Int {get set}
    // No bodies allowed!
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

// Multiple protocols can be conformed (using ",")
struct Car: Vehicle {
    let name = "Car"
    var currentPassengers = 1
    
    // Adopting/conforming to the protocol
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I am driving \(distance) km")
    }
    
    // extra method, not related to protocol
    func openSunroof() {
        print("Sunny!")
    }
}

struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I am cycling for \(distance) km!")
    }
}

// Use protocol as type directly!
func communte(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("Slow boiiiii")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
communte(distance: 100, using: car)

// Opaque return types
// 5 == true ???????????? (doesnt make sense!!)
// Python's __eq__

protocol View { }

// the return type conforms to the protocol (opaque return type)
// but swift compiler still knows what's underlying it!
func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

// Extensions
// can extend class,structs
// Why not just use a regular func?:
// 1. Code completion (complete code by itself whenever you use the type)
// 2. Code organization (naturally grouped)
// 3. Internal Access (can access internal prop/method)
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
//    modify itself using mutating + self!
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}
let quote = 
"""
dasdasd
dasdasd
asdasd
"""
let talk = quote.trimmed()
print(quote.lines)

// Protocol Extensions
// extends protocol as well!
// collection is a protocol, with isEmpty built-in
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        // make this like a default function for sayHello
        print("Hi, I'm \(name)")
    }
}

//Checkpoints 8
protocol Building {
    var numOfRooms: Int {get}
    var cost: Int {get set}
    var agent: String {get set}
    func printSummary()
}

struct House: Building {
    let numOfRooms = 3
    var cost = 20_000
    var agent = "Tim"
    func printSummary() {
        print("This building has \(numOfRooms) rooms. Its total cost is  \(cost). The agent is \(agent)")
    }
}

struct Office: Building {
    let numOfRooms = 100
    var cost = 5000_000
    var agent = "Jason"
    
    func printSummary() {
        print("This office building has \(numOfRooms) rooms. Its total cost is  \(cost). The agent is \(agent)")
    }
}

let house1 = House(cost: 100_000, agent: "Jason")
house1.printSummary()
