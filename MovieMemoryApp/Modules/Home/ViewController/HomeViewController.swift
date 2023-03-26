//
//  HomeViewController.swift
//  MovieMemoryApp
//
//  Created by 小野拓人 on 2023/03/21.
//

import UIKit

final class HomeViewController: UIViewController {
    @IBAction func button(_ sender: Any) {
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
