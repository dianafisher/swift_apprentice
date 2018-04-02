//: Playground - noun: a place where people can play

import UIKit

/*:
 # Chapter 5: Functions
 */

/*:
 ## Mini-exercises
 
 ### 1. Write a function named printFullName that takes two strings called firstName and lastName. The function should print out the full name defined as firstName + " " + lastName. Use it to print out your own full name.
 */

func printFullName(firstName: String, lastName: String) {
    let fullName = firstName + " " + lastName
    print("\(fullName)")
}
printFullName(firstName: "John", lastName: "Smith")

/*:
 ### 2. Change the declaration of printFullName to have no external name for either parameter.
 */

func printFullName(_ firstName: String, _ lastName: String) {
    let fullName = firstName + " " + lastName
    print("\(fullName)")
}

printFullName("Matt", "Bellamy")

/*:
 ### 3. Write a function named calculateFullName that returns the full name as a string. Use it to store your own full name in a constant.
 */

func calculateFullName(_ first: String, _ last: String) -> String {
    return first + " " + last
}

let myName = calculateFullName("John", "Lennon")
print("\(myName)")

/*:
 ### 4. Change calculateFullName to return a tuple containing both the full name and the length of the name. You can find a string’s length by using the count property. Use this function to determine the length of your own full name.
 */

func calculateFullName2(_ first: String, _ last: String) -> (String, Int) {
    let fullName = first + " " + last
    let length = fullName.count
    return (fullName, length)
}

let (name, length) = calculateFullName2("Diana", "Fisher")
print("\(name) is \(length) characters long.")

/*:
 ### Notes
 */

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

var function = add
function(6, 3)

/*:
 ## Challenges
 
 ### 1. Looping with stride functions
 Countable ranages are limited in that they always must be increasing by one.  The Swift stride(from:to:by:) and stride(from:through:by:) functions let you loop much more flexibly.
 
     for index in stride(from: 10, to: 22, by: 4) {
        print(index)
     }
     // prints 10, 14, 18
 
     for index in stride(from: 10, through: 22, by: 4) {
        print(index)
     }
     // prints 10, 14, 18, 22
 
 What is the difference between the two stride function overloads?
 
 stride(from:to:by) starts at from (inclusive), and ends at to (exclusive)
 stride(from:through:by) starts at from (inclusive), and ends at through (inclusive)
 
 Write a loop that goes from 10.0 to (and including) 9.0, decrementing by 0.1.
 */
for index in stride(from: 10.0, through:9.0, by: -0.1) {
    print(index)
}

/*:
 ### 2. It's prime time
 When I’m acquainting myself with a programming language, one of the first things I do is write a function to determine whether or not a number is prime. That’s your second challenge.
 
 First, write the following function:
 
    func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool

 */

func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    return number % divisor == 0
}

/*:
 Next, write the main function:
    func isPrime(_ number: Int) -> Bool
 
 This should return true if number is prime, and false otherwise. A number is prime if it’s only divisible by 1 and itself. You should loop through the numbers from 1 to the number and find the number’s divisors. If it has any divisors other than 1 and itself, then the number isn’t prime. You’ll need to use the isNumberDivisible(_:by:) function you wrote earlier.
 
 */

func isPrime(_ number: Int) -> Bool {
    if number < 0 {
        return false
    }
    
//    // Use a for loop to find divisors
//    for n in 2..<number {
//        if isNumberDivisible(number, by: n) {
//            return false
//        }
//    }
    
    let dNumber = Double(number)
    let root = sqrt(dNumber)
    for m in stride(from:2.0, through:root, by: 1.0) {
        if isNumberDivisible(dNumber, by: m) {
            return false
        }
    }
    return true
}

func isNumberDivisible(_ number: Double, by divisor: Double) -> Bool {
    return number.truncatingRemainder(dividingBy: divisor).isEqual(to: 0.0)
}

isPrime(6)
isPrime(13)
isPrime(8893)
isPrime(25)
