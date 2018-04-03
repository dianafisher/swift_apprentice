//: Playground - noun: a place where people can play

import UIKit

/*:
 # Chapter 8: Collection Iteration with Closures
 */


var multiplyClosure: (Int, Int) -> Int  // declaration of variable holding a closure

// the parameter list appears inside braces, and there is an 'in' keyword after the return type

multiplyClosure = { (a: Int, b: Int) -> Int in
    return a * b
}

/*:
 ### Shorthand syntax
 */

// You can leave out the return keyword if the closure consists of a single statement.

multiplyClosure = { (a: Int, b: Int) -> Int in
    a * b   // return keyword omitted
}

// Can use type inference to shorten the syntax by removing the type information

multiplyClosure = { (a, b) in
    a * b
}

// can omit the parameter list and refer to each parameter by number, starting at zero.
multiplyClosure = {
    $0 * $1
}

// Since closures are just functions without names, you can pass either a function or a closure into the operation parameter.
func operateOnNumbers(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    print(result)
    return result
}

let addClosure = { (a: Int, b: Int) in
    a + b
}

operateOnNumbers(4, 2, operation: addClosure)

// Can define the entire thing inline, like this:
operateOnNumbers(5, 3) { (a: Int, b: Int) -> Int in
    return a * b
}

operateOnNumbers(10, 3, operation: { $0 + $1 })

/*:
 ### Trailing closure syntax:
 
 Remove the label and pull the braces outside of the function call parameter list.
 */
operateOnNumbers(4, 2) {
    $0 + $1
}

// Closures introduce a new scope and inherit all entities visible to the scope in which they are defined.

var counter = 0
let incremenetCounter = {
    counter += 1
}
// incrementCounter is able to access the counter variable becuase the closure is defined in the same scope as the variable.  The closure is said to capture the counter variable.  Any changes it makes to the variable are visible both inside and outside the closure.

// this function returns a closure that will increment its internal counter each time it is called.  Each time you call this function you get a different counter.
func countingClosure() -> () -> Int {
    var counter = 0
    let incrementCounter: () -> Int = {
        counter += 1
        return counter
    }
    return incrementCounter
}

let counter1 = countingClosure()
let counter2 = countingClosure()

counter1()  // 1
counter2()  // 1

// Use closures to do custom sorting on collections
let names = ["ZZZZZ", "BB", "A", "CCC", "EEEE"]
names.sorted()

// sort by length of the string
names.sorted {
    $0.count > $1.count
}

/*:
 ### for Each
 */
let values = [1, 2, 3, 4, 5, 6]
values.forEach {
    print("\($0): \($0*$0)")
}

/*:
 ### filter
 */
var prices = [1.5, 10, 4.99, 2.30, 8.19]

// filter out prices greater than 5
let largePrices = prices.filter {
    return $0 > 5   // the closure returns true or false depending on whether or not the vlaue should be kept.
}
// The (new) array returned will contain all elements for which the closure returned true.

/*:
 ### map
 */

let salesPrices = prices.map {
    return $0 * 0.9
}

// Use map to change the type of the values in an array.
let userInput = ["0", "11", "haha", "42"]
let numbers = userInput.map {
    Int($0)
}

/*:
 ### reduce - takes a starting value and a closure.  The closure takes two values: the current value and an element from the array.  The closure returns the next value that should be passed into the closure as the current value parameter.
 */
let sum = prices.reduce(0) {
    return $0 + $1
}

let stock = [1.5: 5, 10: 2, 4.99: 20, 2.30: 5, 8.19: 30]
let stockSum = stock.reduce(0) {
    return $0 + $1.key * Double($1.value)
}

// reduce(into:_:)

let farmAnimals = ["🐎": 5, "🐄": 10, "🐑": 50, "🐶": 1]
let allAnimals = farmAnimals.reduce(into: []) {
    (result, this: (key: String, value: Int)) in
    for _ in 0 ..< this.value {
        result.append(this.key)
    }
}

/*:
 # Mini-exercises
 ## 1.  Create a constant array called names which contains some names as strings. Any names will do — make sure there’s more than three. Now use reduce to create a string which is the concatenation of each name in the array.
 */
let names2 = ["Charlie", "Dave", "Erica", "George", "Bob"]
let combined = names2.reduce("") {
    $0 + $1
}
print(combined)

/*
 ##2. Using the same names array, first filter the array to contain only names which have more than four characters in them, and then create the same concatenation of names as in the above exercise. (Hint: you can chain these operations together.)
 */

let filtered = names2.filter {
    return $0.count > 4
    }.reduce("") {
        $0 + $1
}
print(filtered)

/*:
 ## 3. Create a constant dictionary called namesAndAges which contains some names as strings mapped to ages as integers. Now use filter to create a dictionary containing only people under the age of 18.
 */

/*:
 ## 4. Using the same namesAndAges dictionary, filter out the adults (those 18 or older) and then use map to convert to an array containing just the names (i.e. drop the ages).
 */
