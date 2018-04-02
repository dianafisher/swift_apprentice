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
