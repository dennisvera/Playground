import Foundation

final public class APIClient {
  
  // MARK: - Types
  
  public enum APIClientError: Error {
    case requestFailed
    case invalidResponse
  }
    
  private enum Components: String {
    case apiKey = "2631ea46e7edd7894cf3eaee7d263667"
    case language = "en-US"
    case page = "1"
  }
  
  private enum Endpoint: String {
    case now_playing
    
    var path: String {
      return rawValue
    }
  }
  
  // MARK: - Initializer
  
  public init() { }
  
  // MARK: - Public API
  
  public func fetchMovies(_ completion: @escaping (Result<Movie, APIClientError>) -> Void) {
    // Create and Initiate Data Task
    URLSession.shared.dataTask(with: request(for: .now_playing)) { (data, response, error) in
      if let data = data {
        do {
          // Initialize JSON Decoder
          let decoder = JSONDecoder()
          
          // Configure JSON Decoder
          decoder.dateDecodingStrategy = .iso8601
          decoder.keyDecodingStrategy = .convertFromSnakeCase
          
          // Decode JSON Response
          let movies = try decoder.decode(Movie.self, from: data)
          
          completion(.success(movies))
          
        } catch {
          completion(.failure(.invalidResponse))
        }
      } else {
        completion(.failure(.requestFailed))
        
        if let error = error {
          print("Unable to fetch Movies: \(error)")
        } else {
          print("Unable to fetch Movies")
        }
      }
    }.resume()
  }
  
  // MARK: - Helper Methods
  
  private func request(for endpoint: Endpoint) -> URLRequest {
    // Create and Configure URL
    var components = URLComponents()
    components.scheme = "https"
    components.host = "api.themoviedb.org"
    components.path = "/3/movie/\(endpoint.path)"
    components.queryItems = [
      URLQueryItem(name: "api_key", value: Components.apiKey.rawValue),
      URLQueryItem(name: "language", value: Components.language.rawValue),
      URLQueryItem(name: "page", value: Components.page.rawValue)
    ]
    
    guard let url = components.url else { fatalError("Unable to compose URL.") }
    
    // Create Request
    let request = URLRequest(url: url)
    
    return request
  }
}
