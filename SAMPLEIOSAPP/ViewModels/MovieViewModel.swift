//
//  MovieViewModel.swift
//  SAMPLEIOSAPP
//
//  Created by Mangi Wimalaweera on 2024-02-17.
//

import Foundation

class MovieViewModel : ObservableObject {
    
    @Published var movieResults: [MovieResults] = []
    let baseURL = "https://api.themoviedb.org/3/movie/now_playing?api_key=b893dfa86071b8f65e8221e4698c8ea4&language=en-US&page=1"
    
    func loadMovies() {
        guard let url = URL(string: baseURL) else {return}
        
        URLSession(configuration: .default).dataTask(with: URLRequest(url: url)) {
            data, response, error in
            guard let data = data else {return}
            do{
                let moviesResponse = try JSONDecoder().decode(MoviesListModel.self, from: data)
                DispatchQueue.main.async {
                    self.movieResults = moviesResponse.results
                }
            } catch {
                print("Unable to decode the data.")
            }
        }.resume()
    }
    
    init() {
        loadMovies()
    }
}
