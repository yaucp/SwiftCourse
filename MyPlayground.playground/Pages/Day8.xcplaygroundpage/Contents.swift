//: [Previous](@previous)

import Foundation

var greeting = "Hello, day 8"

// Default value in function
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) × \(number) is \(i * number)")
    }
}
printTimesTables(for: 5)

//Handle error
//Enum: Error is built in
enum PasswordError: Error {
    case short, obvious
}

//throws keyword indicate this function can (not must) throw an error under certain cases
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        //exit function immediately
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

//do-catch block to catch error
do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
//  This prints out Apple's own localized error description (often okish useful to display)
    print("There was an error: \( error.localizedDescription )")
}
//OR
//let result = try! checkPassword(string)
// this will crash your code if an error is thrown
// ONLY use when you're certain it won't throw any error at all!

//Checkpoint 4
enum squareRootError: Error {
    case outOfBounds, noRoot
}
func findSquareRoot(_ num:Int) throws -> Int {
    if num > 10000 || num < 1 {
        throw squareRootError.outOfBounds
    }
    
    for i in 1...100 {
        if i * i == num {
            return i
        }
    }
    
    throw squareRootError.noRoot
}

do {
    let rootNum = try findSquareRoot(64)
    print(rootNum)
} catch squareRootError.noRoot{
    print("No root!")
} catch squareRootError.outOfBounds {
    print("number too large!")
}
