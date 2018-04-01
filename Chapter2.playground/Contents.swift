//: Playground - noun: a place where people can play

import UIKit

// MARK: Mini-exercises

// 1.

let age1 = 42
let age2 = 21


// 2.

//let avg1 = (age1 + age2) / 2

// 3.
let avg1 = (Double(age1) + Double(age2)) / 2

let characterDog: Character = "🐶"

let bigString = """
  This string is
  a multi-line
  string.
"""

print(bigString)

let coordinates: (Int, Int) = (2, 3)

let coordinates3D = (x: 2, y: 3, z: 1)

// MARK: Mini-exercises

// 1.
let date: (Int, Int, Int, Double) = (3, 31, 2018, 65.6)
print(date.0)

// 2.
let data = (month: 3, day: 31, year: 2018, averageTemperature: 65.6)
print(data.day)

// 3.  Use underscore to ignore month and year.
let (_, day, _, avgTemp) = data
print(day)

// MARK: Challenges

// 1.

let coordinates2 = (2, 3)

// 2.

let namedCoordinate = (row: 3, column: 5)

// 3.

let string: String = "Dog"
let string2: String = "🐶"

// 4.

let tuple = (day: 15, month:8, year: 2015)
let day2 = tuple.day

// 5.

//let name = "Matt"
var name = "Matt"
name += "Galloway"
print(name)

// 6.
let tuple2 = (100, 1.5, 10)
let value = tuple2.1

// 7.
let tuple3 = (day: 15, month: 8, year: 2015)
let month = tuple3.month

// 8.
let number = 10
let multiplier = 5
let summary = "\(number) multiplied by \(multiplier) equals \(number * multiplier)"

// 9.
let a = 4
let b: Int32 = 100
let c: UInt8 = 12

let amount = a + Int(b) - Int(c)

// 10.
let 🥧 = Double.pi
let 🍰 = Float.pi  // Float has less range and precision than Double, but requires half as much storage.











