//: [⇐ Previous: 03 - Challenge - Functions](@previous)
//: ## Episode 04 - Overloading

// --------------------------------------
let passingGrade = 50
let jessyGrade = 49
let ozmaGrade = 87
let ozmaAllGrades = [60, 96, 87, 42]
// --------------------------------------

//: ### Function overloads
//: Overloading lets you define similar functions that share a name

func getPassStatus(for grade: Int) -> Bool {
  grade >= passingGrade
}

//: Overload using Different Number of Parameters

func getPassStatus(for grade: Int, lowestPass: Int) -> Bool {
  grade >= lowestPass
}

getPassStatus(for: ozmaGrade, lowestPass: 80)
getPassStatus(for: jessyGrade)

//: Use default values for parameters, instead of overloads, when you can

func getPassStatus2(for grade: Int, lowestPass: Int = passingGrade) -> Bool {
  grade >= lowestPass
}

getPassStatus2(for: ozmaGrade, lowestPass: 80)
getPassStatus2(for: jessyGrade)

//: Overload using Different Parameter Types

func getPassStatus(for grades: [Int]) -> Bool {
  var totalGrade = 0
  for grade in grades {
    totalGrade += grade
  }
  let averageGrade = totalGrade / grades.count

  return averageGrade >= averageGrade
}


getPassStatus(for: ozmaAllGrades)

//: Overload using Different Argument Labels, like Swift's `stride` functions

for i in stride(from: 10, to: 0, by: -2) {
  print(i)
}

for i in stride(from: 10, through: 0, by: -2) {
  print(i)
}

//: Overload using Different Return Types

func getValue() -> Int {
  return 13
}

func getValue() -> String {
  return "Twizzler"
}

/// the complier does not know which of the two functions you intednt ot call
// getValue()

let intValue: Int = getValue()
let stringValue: String = getValue()


//: [⇒ Next: 05 - Advanced Parameters](@next)
