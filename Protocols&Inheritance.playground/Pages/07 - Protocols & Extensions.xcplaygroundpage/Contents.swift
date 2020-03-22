//: [⇐ Previous: 06 - Protocols](@previous)
//: ## Episode 07: Protocols & Extensions

protocol Animal {
  var name: String { get }

  init(name: String)

  func speak()
}

protocol Aloof {
  var name: String { get }
}

extension Aloof {
  var greeting: String {
    "My name is \(name). Please leave me alone."
  }
}

protocol AloofAnimal: Aloof, Animal { }

extension AloofAnimal {

  func speak() {
    print("\(greeting). I must look at this wall.")
  }
}

class Dog: Animal {
  let name: String
  var tricksLearnedCount: Int
  
  init(name: String, tricksLearnedCount: Int) {
    self.tricksLearnedCount = tricksLearnedCount
    self.name = name
  }
  
  convenience required init(name: String) {
    self.init(name: name, tricksLearnedCount: 0)
  }
  
  func speak() {
    print("Bow wow! My name is \(name)!")
  }
}

class Cat {
  let name: String
  
  required init(name: String) {
    self.name = name
  }
}

extension Cat: AloofAnimal {
  func speak() {
    print(greeting + " Meoow!")
  }
}

let animals: [Animal] = [Dog(name: "Fang"), Cat(name: "Mr. Midnight")]
for animal in animals {
  animal.speak()
}


//: - Extensions

extension Int {
  var isEven: Bool {
    self % 2 == 0
  }

  var isOdd: Bool {
    (self + 1) % 2 == 0
  }
}

5.isEven
5.isOdd

extension Numeric {
  var squared: Self { self * self }
}

5.squared
5.5.squared
