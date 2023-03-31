//
//  MovieDataRepository.swift
//  MovieMemoryApp
//
//  Created by 小野拓人 on 2023/03/31.
//

import UIKit

class MovieDataRepository {
    let movieData: MovieDataProviderProtocol
    
    init(movieData: MovieDataProviderProtocol) {
        self.movieData = movieData
    }
}

extension MovieDataRepository: MovieDataRepositoryProtocol {
    func fetch() -> [(UIImage?, Int)] {
        return self.movieData.movie()
    }
}
