/*:
 ## Challenge 1
 - Create a closure version of the function below.
 - Try out the function & closure!
*/

// --------------------------------------
func calculateFullName(firstName: String, lastName: String?) -> String {
  firstName + " " + (lastName ?? "")
}
// --------------------------------------

let calculateFullNameClosure = { (firstName: String, lastName: String?) -> String in
  firstName + " " + (lastName ?? "")
}

// Closure
let zephodName = calculateFullNameClosure("Zephod", "Beblebrox")
let princeName = calculateFullNameClosure("Prince", nil)

// Function
let eelName = calculateFullName(firstName: "Eel", lastName: "Stinger")
let Cass = calculateFullName(firstName: "Cass", lastName: nil)

/*:
 ## Challenge 2
 - Call the `printResult` function below
 - Use an inline closure as an argument
*/

// --------------------------------------
typealias Operate = (Double, Double) -> Double

func printResult(_ operate: Operate, _ a: Double, _ b: Double) {
  let result = operate(a, b)
  print(result)
}
// --------------------------------------

printResult(
  { (a, b) -> Double in
    ((a * a) + (b * b)).squareRoot()
  },
  5, 3
)

