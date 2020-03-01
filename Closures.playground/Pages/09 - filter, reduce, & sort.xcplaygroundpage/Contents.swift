// --------------------------------------
let arrayOfDwarfArrays = [
  ["Sleepy", "Grumpy", "Doc", "Bashful", "Sneezy"],
  ["Thorin", "Nori", "Bombur"]
]
// --------------------------------------

//: filter

// --------------------------------------
//: `filter solutions`
let dwarvesAfterM = arrayOfDwarfArrays.flatMap { dwarves -> [String] in
  dwarves.filter { (dwarf) -> Bool in
    dwarf > "M"
  }
}

let dwarvesAfterM_2 = arrayOfDwarfArrays.flatMap { dwarves -> [String] in
  dwarves.filter { $0 > "M" }
}


//: reduce

// --------------------------------------
let ozmaGrades = [60, 96, 87, 42]

//: `for-loop solution`
func getPassStatus(for grades: [Int], lowestPass: Int) -> Bool {
  var totalGrade = 0
  for grade in grades {
    totalGrade += grade
  }

  return (totalGrade / grades.count) > lowestPass
}
// --------------------------------------

//: `reduce solutions`
func getPassStatusRedude(for grades: [Int], lowestPass: Int) -> Bool {
  let totalGrade = grades.reduce(0) { (total, grade) -> Int in
    total + grade
  }

  return (totalGrade / grades.count) > lowestPass
}

func getPassStatusRedudeShorten(for grades: [Int], lowestPass: Int) -> Bool {
  let totalGrade = grades.reduce(0) { $0 + $1 }
  return (totalGrade / grades.count) > lowestPass
}

func getPassStatusRedudesuperShort(for grades: [Int], lowestPass: Int) -> Bool {
  let totalGrade = grades.reduce(0, +)
  return (totalGrade / grades.count) > lowestPass
}

getPassStatusRedude(for: ozmaGrades, lowestPass: 60)
getPassStatusRedudeShorten(for: ozmaGrades, lowestPass: 72)
getPassStatusRedudesuperShort(for: ozmaGrades, lowestPass: 60)


//: reduce(into:)
// --------------------------------------
var stock = [1.50: 5, 10.00: 2, 4.99: 20, 2.30: 5, 8.19: 30]
// --------------------------------------

let stockSum = stock.reduce(into: []) { (result, item) in
  result.append(item.key * Double(item.value))
}


//: Sorting Methods

// --------------------------------------
var names = ["Zeus", "Poseidon", "Ares", "Demeter"]
// --------------------------------------

//: sort() & sort(by:) - Sorts in place (mutates the original)
names.sort()
names.sort { (a, b) -> Bool in
  a > b
}
names.sort(by: >)
names

//: sorted() & sorted(by:) - Returns a new collection that is sorted
let longToShortName = names.sorted { $0.count > $1.count }
names

