//
//  SwinjectStoryboard.swift
//  MovieMemoryApp
//
//  Created by 小野拓人 on 2023/03/31.
//

import SwinjectStoryboard

extension SwinjectStoryboard {
    class public func setup() {
        defaultContainer.register(MovieDataProviderProtocol.self) { _ in
            MovieDataProvider(movieName: "ハリーポッター")
        }
        defaultContainer.register(MovieDataRepositoryProtocol.self) { r in
            MovieDataRepository(movieData: r.resolve(MovieDataProviderProtocol.self)!)
        }
        defaultContainer.storyboardInitCompleted(HomeViewController.self) { r, c in
            c.movie = r.resolve(MovieDataProviderProtocol.self)
            c.movieDataRepository = r.resolve(MovieDataRepositoryProtocol.self)
        }
    }
}
