//: Playground - noun: a place where people can play

import UIKit
/*:
 # Chapter 7: Arrays, Dictionaries, Sets
 */

// Array literal
let evenNumbers = [2, 34, 6, 8]

// Create an array with all values set to a default value.
let allZeros = Array(repeating: 0, count: 5) // [0,0,0,0,0]

// To get the minimum value from an array:
var players = ["Edgar", "Alice", "Bob", "Cindy", "Dan"]

let currentPlayer = players.min()
print(currentPlayer as Any)

if let currentPlayer = currentPlayer {
    print("\(currentPlayer) will start")
}

/*:
 ## Using countable ranges to make an ArraySlice
 */

// To fetch more than one value from an array using ArraySlice
let upcomingPlayersSlice = players[1...2]  // this is an ArraySlice
print(upcomingPlayersSlice[1], upcomingPlayersSlice[2])

// upcomingPlayersSlice is an ArraySlice of the original array.

// Create a new array..
let upcomingPlayersArray = Array(players[1...2])
print(upcomingPlayersArray[0], upcomingPlayersArray[1])

// Appending elements to an array.

players.append("Greg")
players += ["Henry"]

print(players)

/*:
 # Mini-exercise
 Use index(of:) to determine the position of the element "Dan" in players.
 */
let danIndex = players.index(of: "Dan")

if let index = danIndex {
    players[index] = "Daniel"
}
print(players)

// Use subscripting with ranges to update multiple values in the array..
players[0...1] = ["Happy", "Slappy", "Fluffy", "Doc"]
print(players)  // The first two items in the players array have been replaced with the above array even though the sizes are different.

// Swapping items...
players.swapAt(1, 3)
print(players)


// Sort the array
players.sort()
print(players)

// Iterating through an array
for player in players {
    print(player)
}

// If you also need the index..
for (index, player) in players.enumerated() {
    print("\(index + 1). \(player)")
}

/*:
 # Dictionaries
 */

// The empty dictionary literal looks like this [:]
var pairs: [String: Int] = [:]

// You can define the capacity of the dictionary
pairs.reserveCapacity(20)

// Use .isEmpty instead of count when testing if a dictionary is empty.  A dictionary needs to loop through all of the values to compute count.

var bobData = [
    "name": "Bob",
    "profession": "Card Player",
    "country": "USA"
]

// to add a value to the dictionary
bobData.updateValue("CA", forKey: "state")

// alternatively,
bobData["city"] = "San Francisco"

print(bobData)


// Assigning nil to the value of a key will remove the pair from the dictionary.
bobData["city"] = nil
// Use the updateValue method if you do not want the pair removed from the dictionary.

/*:
 # Sets
 */

// Declare a set explicitly
let setOne: Set<Int>

// Sets do not have their own literals.

var someSet: Set<Int> = [1, 2, 3, 1]
print(someSet)

/*:
 ## Challenges
 
 ### Challenge 1.  Which of the following are valid statements?
 
 1. let array1 = [Int]()        // valid.
 2. let array2 = []             // will cause index out of bounds error at runtime.
 3. let array3: [String] = []   // valid.
 
 let array4 = [1, 2, 3]
 
 4. print(array4[0])            // valid.
 5. print(array4[5])            // invalid.
 6. array4[1...2]               // valid.
 7. array4[0] = 4               // invalid.  constant array can't be modified
 8. array4.append(4)            // invalid.  cannot append to constant array
 
 var array5 = [1, 2, 3]
 
 9. array5[0] = array5[1]       // valid.
 10. array5[0...1] = [4, 5]     // valid.
 11. array5[0] = "Six"          // invalid.
 12. array5 += 6                // invalid.
 13. for item in array5 { print(item) }  // valid.
 
 ### Challenge 2.  Write a function that removes the first occurrence of a given integer from an array of integers. This is the signature of the function:
 */
func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
    var result = array
    if let index = array.index(of: item) {
        result.remove(at: index)
    }
    
    return result
}

/*:
 ### Challenge 3. Write a function that removes all occurrences of a given integer from an array of integers. This is the signature of the function:
 */

func removing(_ item: Int, from array: [Int]) -> [Int] {
    var result = array
    for thing in array {
        if thing != item {
            result.append(thing)
        }
    }
    return result
}

/*:
 ### Challenge 4. Arrays have a reversed() method that returns an array holding the same elements as the original array, in reverse order. Write a function that does the same thing, without using reversed(). This is the signature of the function:
*/
func reversed(_ array: [Int]) -> [Int] {
    var result : [Int] = []
    let lastIndex = array.count - 1
    for index in stride(from:lastIndex, through: 0, by: -1) {
        result.append(array[index])
    }
    return result
}

let array3 = [1, 3, 4, 5, 6]
let revArray3 = reversed(array3)
print(revArray3)

/*
 ### Challenge 5.
 
 The function below returns a random number between 0 and the given argument:
     import Foundation
     func randomFromZero(to number: Int) -> Int {
        return Int(arc4random_uniform(UInt32(number)))
     }
 Use it to write a function that shuffles the elements of an array in random order.
 */

import Foundation
func randomFromZero(to number: Int) -> Int {
    return Int(arc4random_uniform(UInt32(number)))
}

func randomized(_ array: [Int]) -> [Int] {
    var result = array
    for index in 0..<array.count {
        let randomIndex = randomFromZero(to: array.count)
        result.swapAt(index, randomIndex)
    }
    
    return result
}

let shuffled = randomized(array3)
print(shuffled)

