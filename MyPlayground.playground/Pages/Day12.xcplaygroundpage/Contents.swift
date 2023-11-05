//: [Previous](@previous)

import Foundation

var greeting = "Hello, class!"

// Class

// Differences from struct:
// 1. Inheritance
// --> Need custom initialisers!!!
// 2. Copy instance = Copies the same shared data (changes the data as well!)
// 3. Add deinitializer to run when it's destroyed!
// 4. Constant class instances can change properties (when it's declared as var)
// class no need to add mutating keyword in function

// Inheritance:
class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I havw worked for \(hours) hours.")
    }
}

// Subclass, inherit from employee
/** final (same with java, no inheritance) **/class Developer: Employee {
    func work() {
        print("I have coded for \(hours) hours.")
    }
    
    // override function
    override func printSummary() {
        print("I have been coding for super long already..............")
    }
    // if new child func returns a different type, no need for override keyword
}

let robert = Developer(hours: 8)
robert.work()
robert.printSummary()

// Class initializers/constructor
class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

//class Car: Vehicle {
//    let isConvertible: Bool
//    
//    init(isConvertible: Bool) {
//        self.isConvertible = isConvertible
//        FAIL AND NOT BEING ABLE TO COMPILE/BUILD AS IT DOESN'T PROVIDE VALUE FOR ISELECTIC
//    }
//}

class Car: Vehicle {
    let isConvertible: Bool
    
//  if subclass doesn't have initialisers, it will inherit from the parent class
    init(isConvertible: Bool, isElectric: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isConvertible: false, isElectric: true)

// Copying classes
class User {
    var username = "Anonymous"
    
    // Deep copy
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1
user2.username = "Taylor"

print(user1.username)
print(user2.username)
// Classes = copy the memory reference as well
// Struct = value type, i.e. complete variable is copied, new reference is created.

// DEinitializer
// No need func + no param/return data
// automatically run when last copy of a class instacne is destroyed (can't be called manually)
// Struct DOESN'T have one!

class NewUser {
    let id: Int
    var name = "Paul"
    
    init(id: Int) {
        self.id = id
        print("User \(self.id): I'm alive")
    }
    
    deinit {
        print("User \(id): I'm dying!!!!!")
    }
}

var users = [NewUser]()

for i in 1...3 {
    let user = NewUser(id: i)
    print("User \(user.id): In for-loop")
    users.append(user)
}

print("Loop is finished")
users.removeAll()
print("Array is cleared")

// Work with variables inside classes
let user = NewUser(id: 0) // LET!!!!!!!
user.name = "Thomas" // can still modify as user only stores the object's memory reference
print(user.name)

// Checkpoint 7!!!!!!!!!!!!!!
class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    init() {
        super.init(legs: 4)
    }
    func speak() {
        print("woof!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Corgi woof!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Poodle woof!")
    }
}

class Cat: Animal {
    let isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    
    func speak() {
        print("Meow")
    }
}

class Persian: Cat {
    init() {
        super.init(isTame: true)
    }
}

class Lion: Cat {
    init() {
        super.init(isTame: false)
    }
}
