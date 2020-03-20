//: [⇐ Previous: 02 - Inheritance](@previous)
//: ## Episode 03: Challenge - Inheritance

/*:
## Challenge 1 - Building a Class Heirarchy
Create a class named `Animal` that has…
1. a function named `speak()` that does nothing.
 
Create two `Animal` subclasses...
1. `WildAnimal` that...
  - has an `isPoisonous` property, that is a `Bool`
  - has an initializer that takes `isPoisonous` as a parameter
2. `Pet` that...
  - has a stored property named `name`, that is a `String`
  - has an initializer that takes `name` as a parameter
  - has a `play()` method that prints out a message
  - overrides `speak()` - It should print out a message

Create one subclass of your choice of `WildAnimal` or `Pet`. It should do at least one of the following:
 - override `speak()`
 - override `play()`
 - Add a new computed property
 - Add a new method
*/


// TODO: Write solution here

class Animal {
  func speak() {
  }
}

class WildAnimal: Animal {
  let isPoisonous: Bool

  init(isPoisonous: Bool) {
    self.isPoisonous = isPoisonous
  }
}

class Pet: Animal {
  let name: String

  init(name: String) {
    self.name = name
  }

  func play()  {
    print("It's time to play")
  }

  override func speak() {
    print("Bak Bak Bak")
  }
}

class Hippopotamus: WildAnimal {
  var size: String {
    return "The hippopotamus is the type genus of the family Hippopotamidae."
  }

  override func speak() {
    print("Hippos differ from all other large land mammals, being of semiaquatic habits, and spending their days in lakes and rivers.")
  }
  func etymology() {

  }
}



/*:
## Challenge 2 - Casting
- Create at least one instance of each class from the first challenge.
- Create an array that contains all of the instances.
- Write a function that takes an `Animal` and does something different depending on what subclass it is. Try using conditional downcasting!
- Call the function with each of your instances using a loop or whatever other method you'd like!
*/



// TODO: Write solution here



//: [⇒ Next: 04 - Initializers](@next)
