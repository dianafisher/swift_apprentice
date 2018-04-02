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
