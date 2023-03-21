//
//  HomeViewController.swift
//  MovieMemoryApp
//
//  Created by 小野拓人 on 2023/03/21.
//

import Foundation
import UIKit

final class HomeViewController: UIViewController {
    
    @IBAction func button(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let movieDetailViewController = storyboard.instantiateViewController(withIdentifier: "MovieDetail") as! MovieDetailViewController
        self.navigationController?.pushViewController(movieDetailViewController, animated: true)
    }
}
