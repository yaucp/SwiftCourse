//: [Previous](@previous)

import Foundation

var greeting = "Hello, struct"

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) in \(year)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)

print(red.title)

red.printSummary()

// In swift, if the album obj is being declared as let/const, all the properties are constant as well!
// Wont call mutating func if the instance is declared via let
struct Employee {
    let name: String
    var vacationRemaining: Int = 14
    mutating func takeVacation(days: Int) { // add mutating in front of the function to indicate it will change the properites
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        }
        else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}


var archer = Employee(name: "steve", vacationRemaining: 10)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

// Computed property
// Calculated everytime they are accessed

struct NewEmployee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
//  Computed everytime it's accessed
    var vacationRemaining: Int {
//        getter
        get {
            vacationAllocated - vacationTaken
        }
        set {
//            newValue automatically can be used
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var tim = NewEmployee(name: "Tim")
tim.vacationTaken += 4
print(tim.vacationRemaining)
tim.vacationRemaining = 5
print(tim.vacationAllocated)

//property observer
struct Game {
    var score = 0 {
        willSet {
//            runs everytime BEFORE it's modified
//            infrequent
            print("Before update: \(score) new score: \(newValue)")
        }
        didSet {
//            runs everytime AFTER it's modified
            print("Current score: \(score) old score: \(oldValue)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 5

struct Player {
    let name: String 
    let number: Int
    
//    custom constructor/initializer
//    no return type needed
//    overload!
    init(name:String) {
        self.name = name
        self.number = Int.random(in: 1...50)
    }
    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
}

var p1 = Player(name: "Thomas")
print(p1.number)
