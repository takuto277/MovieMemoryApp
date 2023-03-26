//
//  MovieDetailViewController.swift
//  MovieMemoryApp
//
//  Created by 小野拓人 on 2023/03/21.
//

import UIKit

final class MovieDetailViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Routerで初期値を設定すべき、ここで定義してもnilになるから意味ない
       // self.textLabel.text = "詳細画面"
    }
}
