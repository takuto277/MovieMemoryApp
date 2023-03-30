//
//  SwinjectStoryboard.swift
//  MovieMemoryApp
//
//  Created by 小野拓人 on 2023/03/31.
//

import SwinjectStoryboard

extension SwinjectStoryboard {
    class public func setup() {
        defaultContainer.storyboardInitCompleted(HomeViewController.self) { r, c in
            c.movie = r.resolve(MovieData.self)
        }
    }
}
