//
//  MovieData.swift
//  MovieMemoryApp
//
//  Created by 小野拓人 on 2023/03/31.
//

protocol MovieDataProtocol {
    func movie()
}

class MovieData: MovieDataProtocol {
    let movieName: String?
    
    init(movieName: String) {
        self.movieName = movieName
    }
    
    func movie() {
        print("私は\(movieName ?? "失敗")を見ました")
    }
}
