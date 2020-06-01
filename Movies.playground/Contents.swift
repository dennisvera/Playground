import Foundation

// Fetch Movies
APIClient().fetchMovies { result in
  switch result {
  case .success(let movies):
    print(movies.results.count)
    print(movies.results[0].title)
  case .failure(let error):
    print(error)
  }
}
