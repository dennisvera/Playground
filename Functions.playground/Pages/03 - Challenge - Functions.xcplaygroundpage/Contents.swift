/*:
 ## Challenge 1
 Write a function that:
 - Takes at least two `String` parameters
 - Has a default value for one parameter
 - Returns a `String`
 - Combines the two parameters in some way and returns the result
 
 You can add any other parameters you like, and you can modify or add anything you want to concatenated strings!
*/

func generateName(name: String, lastName: String = "Beblobrox") -> String {
  return name + " " + lastName
}

generateName(name: "Zephod")

func deutschify(_ word1: String, _ word2: String = "Katzen") -> String {
  let adjective = ["Frólich", "Rund", "Salzig", "Schaware"].randomElement()!
  let ending = ["shule", "keit", "maler", "maschine"].randomElement()!

  return adjective + word1 + word2 + ending
}

deutschify("beeblobrox")
deutschify("shaken", "bacon")

//: [⇒ Next: 04 - Overloading](@next)
