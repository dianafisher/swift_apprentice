//: Playground - noun: a place where people can play

import UIKit

/*:
 # Chapter 6: Optionals
 
 ## Mini-exercises
 
 ## 1. Make an optional String called myFavoriteSong. If you have a favorite song, set it to a string representing that song. If you have more than one favorite song or no favorite, set the optional to nil.
 */

var myFavoriteSong: String?
myFavoriteSong = "The Handler"
//myFavoriteSong = nil

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

/*:
 # Notes
 */

var result: Int? = 30
print(result as Any)

// Force unwrapping

var authorName: String? = "Matt Galloway"
var authorAge: Int? = 30

var unwrappedAuthorName = authorName!  // look inside the box and take out the value.

authorName = nil
//print("Author is \(authorName)")

// Optional binding - if the optional contains a value, the value is unwrapped and stored in (bound to) the constant

if let unwrappedAuthorName = authorName {
    print("Author is \(unwrappedAuthorName)")
} else {
    print("No author.")
}

// Optional binding is much safer than force unwrapping, and you should use is whenever an optional might be nil.  Force unwrapping is only appropriate when an optional is guaranteed to contain a value.

/*:
 # Mini-exercises
 
 ## 1. Using your myFavoriteSong variable from earlier, use optional binding to check if it contains a value. If it does, print out the value. If it doesn’t, print "I don’t have a favorite song.
 */
if let faveSong = myFavoriteSong {
    print("My favorite song is \(faveSong)")
} else {
    print("I don't have a favorite song.")
}

/*:
 ## 2. Change myFavoriteSong to the opposite of what it is now. If it’s nil, set it to a string; if it’s a string, set it to nil. Observe how your printed result changes.
 
 */

/*:
 # Notes
 */

// ?? is the nil coalescing operator

var optionalInt: Int? = 10
var mustHaveResult: Int
if let unwrapped = optionalInt {
    mustHaveResult = unwrapped
} else {
    mustHaveResult = 0
}

// can be written as:

optionalInt = nil
mustHaveResult = optionalInt ?? 0

/*
The safest ways to unwrap an optional’s value is by using optional binding or nil coalescing. Use forced unwrapping only when appropriate, as it could produce a runtime error.
*/


