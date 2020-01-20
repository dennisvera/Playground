import Foundation

final public class APIClient {

  public enum APIClientError: Error {
    case requestFailed
    case invalidResponse
  }

  // MARK: - Properties

  private let baseUrl: URL

  // MARK: - Initializer

  public init(baseUrl: URL) {
    self.baseUrl = baseUrl
  }

  public func fetchMovies(_ completion: @escaping (Result<Response, APIClientError>) -> Void) {
    let url = baseUrl
    //    let url = baseUrl.appendingPathComponent("now_playing?api_key=2631ea46e7edd7894cf3eaee7d263667&language=en-US&page=1")

    // Create Request
    let request = URLRequest(url: url)

    // Create and Initiate Data Task
    URLSession.shared.dataTask(with: request) { (data, response, error) in
      if let data = data {
        do {
          // Initialize JSON Decoder
          let decoder = JSONDecoder()

          // Configure JSON Decoder
          decoder.dateDecodingStrategy = .iso8601
          decoder.keyDecodingStrategy = .convertFromSnakeCase

          // Decode JSON Response
          let movies = try decoder.decode(Response.self, from: data)

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
}
