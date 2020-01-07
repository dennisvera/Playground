import Foundation

public struct Response: Codable {
  
  // MARK: - Properties
  
  public var results: [Movie]
}

public struct Movie: Codable {

  // MARK: - Properties

  public let id: Int
  public let title: String
  public let overview: String
  public let releaseDate: String
}

