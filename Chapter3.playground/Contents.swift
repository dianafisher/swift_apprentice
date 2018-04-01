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

/*:
 ## Mini Exercises
 */

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

/*:
 ## Notes
 */

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

/*:
 ## Challenges
 ### Challenge 1
 What’s wrong with the following code?
 
 ```
 let firstName = "Matt"
 
 if firstName == "Matt" {
 let lastName = "Galloway"
 } else if firstName == "Ray" {
 let lastName = "Wenderlich"
 }
 let fullName = firstName + " " + lastName
 ```
 */
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

/*:
 ### Challenge 3
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

/*:
 ### Challenge 4
 
 Given the coefficients a, b and c, calculate the solutions to a quadratic equation with these coefficients. Take into account the different number of solutions (0, 1 or 2). If you need a math refresher, this Wikipedia article on the quadratic equation will help
 
 https://en.wikipedia.org/wiki/Quadratic_formula.
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

/*:
 ### Challenge 5
 
 Given a month (represented with a String in all lowercase) and the current year (represented with an Int), calculate the number of days in the month. Remember that because of leap years, "february" has 29 days when the year is a multiple of 4 but not a multiple of 100. February also has 29 days when the year is a multiple of 400.
 */

let month = "february"
let year = 2018
var numberOfDays = 0
if month == "january" || month == "march" || month == "may" || month == "july" || month == "august" || month == "october" || month == "december" {
    numberOfDays = 31
} else if month == "february" {
    numberOfDays = ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) ? 29 : 28
} else {
    numberOfDays = 30
}
print("\(numberOfDays)")

/*:
 ### Challenge 6
 Given a number, determine if this number is a power of 2. (Hint: you can use log2(number) to find the base 2 logarithm of number. log2(number) will return a whole number if number is a power of two. You can also solve the problem using a loop and no logarithm.)
 
 */
let value = 1025
var num = value
var isPowerOfTwo = true
while (num % 2 == 0) {
     num /= 2
}
if num == 1 {
    print("\(value) is a power of 2")
} else {
    print("\(value) is a not power of 2")
}

// Using double values..
let doubleValue = 1024.0
var doubleNum = doubleValue

while doubleNum.truncatingRemainder(dividingBy: 2) == 0 {
    doubleNum /= 2
}
if (doubleNum == 1) {
    print("\(doubleValue) is a power of 2")
} else {
    print("\(doubleValue) is a not power of 2")
}


