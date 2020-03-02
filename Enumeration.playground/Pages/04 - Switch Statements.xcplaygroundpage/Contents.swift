//: ## Episode 04: Switch Statements

enum Month: Int {
  case january = 1, february, march, april, may, june, july, august, september, october, november, december
}

enum Season: String, CaseIterable {
  /// ☃️
  case winter
  /// 🌸
  case spring
  /// 😎
  case summer
  /// 🍂
  case autumn
}

func getSeason(for month: Month) -> Season {
  switch month {
  case .december, .january, .february:
    return Season.winter
  case .march, .april, .may:
    return Season.spring
  case .june, .july, .august:
    return Season.summer
  case .september, .october, .november:
    return Season.autumn
  }
}

getSeason(for: .august)
