//
//  MovieDataProvider.swift
//  MovieMemoryApp
//
//  Created by 小野拓人 on 2023/03/31.
//

// TODO: Assetsから画像を取得するのに必要、本実装時に削除予定
import UIKit
import SQLite3

protocol MovieDataProviderProtocol {
    func movie() -> [(UIImage?, Int)]
}

class MovieDataProvider: MovieDataProviderProtocol {
    let movieName: String?
    
    init(movieName: String) {
        self.movieName = movieName
    }
    
    func movie() -> [(UIImage?, Int)] {
           let image = UIImage(named: "totoro")
        var array = [(image, 0)]
        for i in 0...10 {
            array.append((image, i))
        }
        return array
    }
}
