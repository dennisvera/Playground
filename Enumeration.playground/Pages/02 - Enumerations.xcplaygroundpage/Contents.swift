//: ## Episode 02: Enumerations

enum Month: Int {
  case january = 1, february, march, april, may, june, july, august, september, october, november, december
}

let month = Month.october
print(month)

func monthsTillJingleBells(from month: Month) -> Int {
  Month.december.rawValue - month.rawValue
}

monthsTillJingleBells(from: .november)

let rawMonth = Month(rawValue: 3)

enum Season: String, CaseIterable {
  /// ☃️
  case winter
  /// 🌸
  case spring
  /// 🌞
  case summer
  /// 🍁
  case autumn
}

// the raw value, in this case the name of the case
Season.winter.rawValue

// allCases will return an array of all case in the enum
Season.allCases

// filtering with allCases
let seasonsStartingWithS = Season.allCases.filter {
  $0.rawValue.first == "s"
}
