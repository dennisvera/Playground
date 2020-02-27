/*:
 ## Challenge 1
 Rewrite the long closure with the following syntax:
  * No parameter types
  * No parameter or return types
  * No parameter names
 Try passing the same values into each closure. Their printed results should match!
*/

// --------------------------------------
let copyLines = { (offense: String, repeatCount: Int) -> Void in
  print( String(repeating: "I must not \(offense).", count: repeatCount) )
}
// --------------------------------------

// TODO: Write solution here

//: ` No parameter types solution`
let copyLines_2: (String, Int) -> Void = { offense, repeatCount -> Void in
  print( String(repeating: "I must not \(offense). ", count: repeatCount) )
}

//: `No parameter or return types solution`
let copyLines_3: (String, Int) -> Void = { offense, repeatCount in
  print( String(repeating: "I must not \(offense). ", count: repeatCount) )
}

//: ` No parameter names solution`
let copyLines_4: (String, Int) -> Void = {
  print( String(repeating: "I must not \($0). ", count: $1) )
}

copyLines("eat donuts at night", 2)
copyLines_2("eat donuts at night", 2)
copyLines_3("eat donuts at night", 2)
copyLines_4("eat donuts at night", 2)
