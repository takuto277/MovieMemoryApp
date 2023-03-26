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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            let nextView = segue.destination as! MovieDetailViewController
            nextView.textLabel?.text = "詳細画面"
        }
    }
}
