//: Playground - noun: a place where people can play

import UIKit

let doesOneEqualTwo = (1 == 2)

let andOr = (1 < 2 && 3 > 4) || 1 < 4
/*
 (true && false) || true
 false || true
 true
 */

let guess = "dog"
let dogEqualsCat = guess == "cat"

let order = "cat" < "dog"

// MARK: Mini-exercises

// 1.
let myAge = 14
let isTeenager = (myAge >= 13 && myAge <= 19)

// 2.
let theirAge = 30
let bothTeenagers = (theirAge >= 13 && theirAge <= 19) && isTeenager

// 3.
let reader = "Diana"
let author = "Matt Galloway"
let authorIsReader = (reader == author)

// 4.
let readerBeforeAuthor = reader < author

// MARK: Notes

// Ternary Operator

let A = 5
let B = 10
let min = A < B ? A : B
let max = A > B ? A : B

// MARK: Mini-exercises

// 1.
let statement = (myAge >= 13 && myAge <= 19) ? "Teenager" : "Not a teenager"

// 2.
print (statement)

// MARK: Notes

var sum = 1
while sum < 1000 {
    sum = sum + (sum + 1)
}

/*
 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023
 */

// repeat-while loop

sum = 1
repeat {
    sum = sum + (sum + 1)
} while sum < 1000

// MARK: Mini-exercises

// 1.
var counter = 0
while counter < 10 {
    print("counter is \(counter)")
    counter = (counter + 1)
}

// 2.
counter = 0
var roll = 0
repeat {
    roll = Int(arc4random_uniform(6))
    counter += 1
    print("After \(counter) rolls, roll is \(roll)")
} while roll != 0

// MARK: Challenges

// 1.
let firstName = "Matt"
var lastName = ""
if firstName == "Matt" {
    lastName = "Galloway"
} else if firstName == "Ray" {
    lastName = "Wenderlich"
}
let fullName = firstName + " " + lastName
print(fullName)

// 2.
let answer = ((10/2) > 3) && ((10 % 2) == 0)

// 3.
/*
 Squares on a chessboard numbered left to right, top to bottom.
 0 is top-left square.  63 is bottom-right square.
 Rows numbered 0 to 7
 Cols numbered 0 to 7
 
 */

let position = (row: 7, col: 7)
let nextRow = (position.row + 1) % 8
let nextCol = (position.col + 1) % 8
let next = (row: nextRow, col: nextCol)
print("\(next)")

// 4.
/*
 Calculate the solution to the quadratic equation: ax^2 + bx + c = 0
 given the coefficients a, b, and c.
 
 x = (-b +/- sqrt(b^2 - 4*a*c))/(2*a)
 */

let a = 1.0
let b = -5.0
let c = 6.0

let d = Double(b*b - 4*a*c)
if d > 0 {
    let x1 = (-b + sqrt(d)) / (2 * a)
    let x2 = (-b - sqrt(d)) / (2 * a)
    print("Solution is \(x1) and \(x2)")
} else if d == 0 {
    let x = -b / (2 * a)
    print("Solution is \(x)")
} else {
    print("No solution")
}




