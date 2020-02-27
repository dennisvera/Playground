import Foundation

// --------------------------------------
var prices = [1.50, 10.00, 4.99, 2.30, 8.19]
// --------------------------------------

//: `forEach` - Loops over a collection and performs an operation

//:  `for loop`
for price in prices {
  print(price)
}

//: `forEach`
prices.forEach { print($0) }


//: `map` - Loops over an array, executes closure code, returns a new array

//:  `for loop`
var forSalePricesArray: [Double] = []
for price in prices {
  forSalePricesArray.append(price * 0.9)
}

//: ` map`
let salePrices = prices.map { $0 * 0.5 }
let priceLabel = salePrices.map { (price) -> String in
  String(format: "%.f", price)
}

let priceLabel_2 = salePrices.map { String(format: "%.f", $0) }


print(forSalePricesArray)
print(salePrices)
print(priceLabel)
print(priceLabel_2)
