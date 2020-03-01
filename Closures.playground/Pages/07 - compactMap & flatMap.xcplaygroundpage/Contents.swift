//: `compactMap`

// --------------------------------------
let userInput = ["meow!", "15", "37.5", "seven"]
// --------------------------------------

//: ` for loop style`
var arrayForValidInput: [Int] = []
for input in userInput {
  guard let input = Int(input) else { continue }
  arrayForValidInput.append(input)
}

print(arrayForValidInput)

//: `compactMap style`
let validInput = userInput.compactMap { (input) in
  Int(input)
}

let validInput_2 = userInput.compactMap { Int($0) }

print(validInput)
print(validInput_2)


//: `flatMap`

// --------------------------------------
let arrayOfDwarfArrays = [
  ["Sleepy", "Grumpy", "Doc", "Bashful", "Sneezy"],
  ["Thorin", "Nori", "Bombur"]
]
// --------------------------------------
let dwarvesAfterM = arrayOfDwarfArrays.flatMap { (dwarves) -> [String] in
  var afterM: [String] = []
  for dwarf in dwarves where dwarf > "M" {
    afterM.append(dwarf)
  }
  return afterM
}

print(dwarvesAfterM)
