import Foundation

public struct Movie: Codable {
  
  // MARK: - Properties
  
  public var results: [MovieResponse]
}

public struct MovieResponse: Codable {

  // MARK: - Properties

  public let id: Int
  public let title: String
  public let overview: String
  public let releaseDate: String

  // Line 1
  // Line 2
  // Line 3
}
