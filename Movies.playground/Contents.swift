import Foundation

// Define URL
let baseUrl = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=2631ea46e7edd7894cf3eaee7d263667&language=en-US&page=1")!

APIClient(baseUrl: baseUrl).fetchMovies { (result) in
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

