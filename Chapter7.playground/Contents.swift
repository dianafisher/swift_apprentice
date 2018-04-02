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
