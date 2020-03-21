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
  func speak() { }
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
    print("It's play time...")
  }

  override func speak() {
    print("Hi! I am pet and my name is \(name), and my pet sound goes Bak Bak Bak")
  }
}

class Hippopotamus: Pet {
  override func speak() {
    print("Hippos differ from all other large land mammals, being of semiaquatic habits, and spending their days in lakes and rivers.")
  }
}



/*:
## Challenge 2 - Casting
- Create at least one instance of each class from the first challenge.
- Create an array that contains all of the instances.
- Write a function that takes an `Animal` and does something different depending on what subclass it is. Try using conditional downcasting!
- Call the function with each of your instances using a loop or whatever other method you'd like!
*/

let animal = Animal()
let snake = WildAnimal(isPoisonous: true)
let rabbit = WildAnimal(isPoisonous: false)
let linguini = Pet(name: "Linquini")
let hipopopo = Hippopotamus(name: "Hippi")

let animals = [animal, snake, rabbit, linguini, hipopopo]

func ourPlanet(forAnimal animal: Animal) {
  if let animal = animal as? WildAnimal {
    print(animal.isPoisonous ? "do not step on me, I will bite you!" : "It's not poisonous at all!")
    return
  }

  if let pet = animal as? Pet {
    switch pet {
    case let hipo as Hippopotamus:
      print("Please take this monkey off my back!. I am \(hipo.name) the hungry hippo!")
      hipo.speak()
      return
    default:
      print("I am a pet and my name is \(pet.name)!")
      pet.speak()
      pet.play()
      return
    }
  }

  print("It's Animal! you know, the Muppet!")
}

animals.forEach(ourPlanet(forAnimal:))
