//: Playground - noun: a place where people can play

import UIKit

/*:
 ## Chapter 4
 */

/*:
 ### Countable Ranges
 */

let closedRange = 0...5  // 0 to 5 inclusive

let halfOpenRange = 0..<5  // 0 to 5, not including 5

// Both open and half-open ranges must always be increasing.

/*:
 ### For loops
 */

/*
 for constant in countable_range {
    do stuff
 }
 */

let count = 10
var sum = 0
for i in 1...count {
    sum += i   // Note that i is only visible in the scope of the for loop.  It is not available outside of the loop.
}

// To ignore the loop constant..

sum = 1
var lastSum = 0

for _ in 0..<count {
    let temp = sum
    sum = sum + lastSum
    lastSum = temp
}

// To only run in certain conditions..

sum = 0
for i in 1...count where i % 2 == 1 {
    sum += i
}

// Labeled statements - you can use labeled statements to break out of a certain loop

sum = 0
rowLoop: for row in 0..<8 {
    columnLoop: for column in 0..<8 {
        if row == column {
            continue rowLoop
        }
    sum += row * column
    }
}

/*:
 ## Mini-exercises

 ### 1. Create a constant named range and set it equal to a range starting at 1 and ending with 10 inclusive. Write a for loop which iterates over this range and prints the square of each number.
 */
let range = 1...10
for n in range {
    print("\(n) squared = \(n*n)")
}

/*:
 ### 2. Write a for loop to iterate over the same range as in the exercise above and print the square root of each number. You’ll need to type convert your loop constant.
 */
for n in range {
    let squareRoot = sqrt(Double(n))
    print("square root of \(n) = \(squareRoot)")
}

/*:
 ### 3. Use a where clause on the for loop to skip even rows
 */
sum = 0
for row in 0..<8 {
    if row % 2 == 0 {
        continue
    }
    for column in 0..<8 {
        sum += row * column
    }
}
print("sum = \(sum)")
