//
//  SwinjectStoryboard.swift
//  MovieMemoryApp
//
//  Created by 小野拓人 on 2023/03/31.
//

import SwinjectStoryboard

extension SwinjectStoryboard {
    class public func setup() {
        defaultContainer.register(MovieDataProtocol.self) { r in
            MovieData(movieName: "ハリーポッター")
        }
        defaultContainer.storyboardInitCompleted(HomeViewController.self) { r, c in
            c.movie = r.resolve(MovieDataProtocol.self)
        }
    }
}
