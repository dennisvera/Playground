import Foundation

// MARK: - Types

enum MovieApi: String {
  case apiKey = "2631ea46e7edd7894cf3eaee7d263667"
  case language = "en-US"
  case page = "1"
}

// Define URL

var components = URLComponents()
components.scheme = "https"
components.host = "api.themoviedb.org"
components.path = "/3/movie/now_playing"
components.queryItems = [
  URLQueryItem(name: "api_key", value: MovieApi.apiKey.rawValue),
  URLQueryItem(name: "language", value: MovieApi.language.rawValue),
  URLQueryItem(name: "page", value: MovieApi.page.rawValue)
]

let baseUrl = components.url!

APIClient(baseUrl: baseUrl).fetchMovies { result in
  print(baseUrl)
  switch result {
  case .success(let movies):
    print(movies.results.count)
    // print first movie title
    print(movies.results[0].title)
  case .failure(let error):
    print(error)
  }
}
