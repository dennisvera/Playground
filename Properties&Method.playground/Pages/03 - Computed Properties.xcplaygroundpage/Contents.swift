//: ## Episode 03: Computed Properties


struct Wizard {
  static var commonMagicalIngredients = [
    "Polyjuice Potion",
    "Eye of Haystack Needle",
    "The Force"
    ] {
    didSet {
      print("Magical Ingredients updated! Common stock now contains \(commonMagicalIngredients)")
    }
  }
  
  var firstName: String {
    willSet {
      print(firstName + " will be set to " + newValue)
    }
    didSet {
      if firstName.contains(" ") {
        print("No spaces allowed! \(firstName) is not a first name. Reverting name to \(oldValue).")
        firstName = oldValue
      }
    }
  }
  var lastName: String

  var fullName: String {
    get { return "\(firstName) \(lastName)" }
    set {
      let nameSubstring = newValue.split(separator: " ")
      guard nameSubstring.count >= 2 else {
        print("\(newValue) is not a full name.")
        return
      }
      let nameStrings = nameSubstring.map(String.init)
      firstName = nameStrings.first!
      lastName = nameStrings.last!
    }
  }
}

var wizard = Wizard(firstName: "Gandalf", lastName: "Greyjoy")
wizard.firstName = "Hermione"
wizard.lastName = "Kenobi"
wizard.firstName = "Merlin Rincewind"

wizard.fullName = "Severus Wenderlich"
