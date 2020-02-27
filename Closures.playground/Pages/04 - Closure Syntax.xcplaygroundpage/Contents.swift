// --------------------------------------
typealias Operate = (Int, Int) -> Int
// --------------------------------------

let longClosure = { (a: Int, b: Int) -> Int in
  a * b
}

let noParametersType: Operate = { (a, b) -> Int in
  a * b
}

let noReturnType: Operate = { (a, b) in
  a * b
}

let shortClosure: Operate = { $0 * $1 }

longClosure(4, 2)
noParametersType(4, 2)
noReturnType(4, 2)
shortClosure(4, 2)

let voidClosure: () -> Void = {
  print("This is a void closure")
}

voidClosure()

// --------------------------------------
func printResult(_ a: Int, _ b: Int, _ operate: Operate) {
  print(operate(a, b))
}
// --------------------------------------

printResult(10, 3, { ($0 * $1 + 10) })

// Trailing Closure Syntax
printResult(10, 3) { $0 * $1 + 10 }

