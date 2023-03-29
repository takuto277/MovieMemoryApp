//
//  HomeViewController.swift
//  MovieMemoryApp
//
//  Created by 小野拓人 on 2023/03/21.
//

import UIKit

final class HomeViewController: UIViewController {

    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainCollectionView.delegate = self
        self.mainCollectionView.dataSource = self
        self.mainCollectionView.register(UINib(nibName: String(describing: BookListCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: "bookList")
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let size = mainCollectionView.frame.height
        layout.itemSize = CGSize(width: size, height: size)
        mainCollectionView.collectionViewLayout = layout
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            let nextView = segue.destination as! MovieDetailViewController
            nextView.textLabel?.text = "詳細画面"
        }
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = mainCollectionView.dequeueReusableCell(withReuseIdentifier: "bookList", for: indexPath) as! BookListCollectionViewCell
        cell.textLabel.text = String(indexPath.row)
        return cell
    }
    
    
}
