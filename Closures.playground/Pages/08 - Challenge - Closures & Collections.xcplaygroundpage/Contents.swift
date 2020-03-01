// --------------------------------------
class Student {
  let name: String
  var grade: Int
  var pet: String?
  var libraryBooks: [String]
  
  init(name: String, grade: Int, pet: String? = nil, libraryBooks: [String]) {
    self.name = name
    self.grade = grade
    self.pet = pet
    self.libraryBooks = libraryBooks
  }
  
  func getPassStatus(lowestPass: Int = 50) -> Bool {
    grade >= lowestPass
  }
  
  func earnExtraCredit() {
    grade += 10
  }
}

let chris = Student(name: "Chris", grade: 49, pet: "Mango", libraryBooks: ["The Book of Atrus", "Living by the Code", "Mastering Git"])
let sam = Student(name: "Sam", grade: 99, pet: nil, libraryBooks: ["Mastering Git"])
let catie = Student(name: "Catie", grade: 75, pet: "Ozma", libraryBooks: ["Hogfather", "Good Omens"])
let andrea = Student(name: "Andrea", grade: 88, pet: "Kitten", libraryBooks: ["Dare to Lead", "The Warrior's Apprentice"])

let students = [chris, sam, catie, andrea]
// --------------------------------------

/*:
 ## Challenge 1 - `forEach` & `map`
 There are two `for` loops below.
 Rewrite one of them using `forEach` and the other with `map`
*/

//: `forLoop solution` for problem 1
//for student in students {
//  student.earnExtraCredit()
//}

//: `forEach solution` for problem 1
students.forEach { student in
  student.earnExtraCredit()
}

//: `forLoop solution` for problem 2
var classLibraryBooks: [[String]] = []
for student in students {
  classLibraryBooks.append(student.libraryBooks)
}

//: `map solutions` for problem 2
let classLibraryBooks_2 = students.map { (student) -> [String] in
  student.libraryBooks
}
let classLibraryBooks_3 = students.map { $0.libraryBooks }
print(classLibraryBooks_2)
print(classLibraryBooks_3)


/*:
 ## Challenge 2 - compactMap
 Replace the `for` loop below with compactMap.
 It will filter out the `nil` values for you!
*/

//: `forLoop solution`
var classPets: [String] = []
for student in students {
  if let pet = student.pet {
    classPets.append(pet)
  }
}

//: `compactMap solutions`
let classPets_2 = students.compactMap { (student) in
  student.pet
}
let classPets_3 = students.compactMap { $0.pet }

print(classPets)
print(classPets_2)
print(classPets_3)


/*:
 ## Challenge 3 - flatMap
 In Challenge 1 you created `libraryBooks`, an array of String arrays!
 Try using flatMap to flatten all of the books into a single String array.
*/

//: `flatMap solutions`
let libraryBooks = students.flatMap { (student) -> [String] in
  student.libraryBooks
}
let libraryBooks_2 = students.flatMap { $0.libraryBooks }

print(libraryBooks)
print(libraryBooks_2)
