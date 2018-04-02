//: Playground - noun: a place where people can play

import UIKit

/*:
 # Chapter 6: Optionals
 
 ## Mini-exercises
 
 ## 1. Make an optional String called myFavoriteSong. If you have a favorite song, set it to a string representing that song. If you have more than one favorite song or no favorite, set the optional to nil.
 */

var myFavoriteSong: String?
myFavoriteSong = "The Handler"
myFavoriteSong = nil

/*:
 ## 2. Create a constant called parsedInt and set it equal to Int("10") which tries to parse the string 10 and convert it to an Int. Check the type of parsedInt using Option-Click. Why is it an optional?
 */
let parsedInt = Int("10")

// parsedInt is an optional because conversion from a String to an Int may fail.

/*:
 ## 3. Change the string being parsed in the above exercise to a non-integer (try dog for example). What does parsedInt equal now?
 */
let parsedInt2 = Int("Dog")

// parsedInt2 is nil.
