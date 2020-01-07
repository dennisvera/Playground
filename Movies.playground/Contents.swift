import Foundation

// Define URL
let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=2631ea46e7edd7894cf3eaee7d263667&language=en-US&page=1")!

// Create Request
var request = URLRequest(url: url)

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

      print(movies.results.count)

    } catch {
      print("Unable to Decode Response: \(error)")
    }
  } else {
    if let error = error {
      print("Unable to fetch Movies: \(error)")
    } else {
      print("Unable to fetch Movies")
    }
  }
}.resume()
