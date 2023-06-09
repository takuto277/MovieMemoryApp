//
//  MovieDataRepositoryProtocol.swift
//  MovieMemoryApp
//
//  Created by 小野拓人 on 2023/03/31.
//

import UIKit

protocol MovieDataRepositoryProtocol {
    func fetch() -> [(UIImage?, Int)]
}
