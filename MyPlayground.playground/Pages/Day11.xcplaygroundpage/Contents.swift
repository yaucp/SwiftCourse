//: [Previous](@previous)

import Foundation

var greeting = "Hello, private!"

struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()

// private: only inside the struct
// fileprivate: only current file can use
// public: EVERYONE!
// private(set):
// Let anyone read this publicly, but it can only be set internally, i.e. private setter

// Need to set its own initialiser, Swift cannot autogen initialiser for private var

// Static properties and methods
// similar with Java, i.e. shared variable and do not need to create an obj before calling the func
struct School {
    static var studentCount = 0
    
//    IN STRUCT:
//    self: current value of a struct
//    Self: current TYPE of struct (e.g. Self.studentCount to access the static variables)
    
    static func add(student: String) {
//        CANNOT call/modify non-static stuff(variables, func)
        print("\(student) has joined the school!")
        studentCount += 1
    }
}

School.add(student: "Tim")
print(School.studentCount)

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "Tim", password: "1234") // great for adding example properties
//    or like static data, Appdata.version, etc...
}


// Checkpoint 6

struct Car {
    let model: String
    let numberOfSeats: Int
    private(set) var gear: Int = 1
    
    init(model: String, numberOfSeats: Int) {
        self.model = model
        self.numberOfSeats = numberOfSeats
    }
    
    mutating func changeGear(to gear: Int) {
        if 1...10 ~= gear {
//            ~= same as contains
            self.gear = gear
            return
        }
        print("\(gear) is invalid!")
    }
}

var car = Car(model: "BMW", numberOfSeats: 10)
car.changeGear(to: 50)
car.changeGear(to: 2)
print(car.gear)
