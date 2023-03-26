//
//  BookListViewController.swift
//  MovieMemoryApp
//
//  Created by 小野拓人 on 2023/03/21.
//

import UIKit

final class BookListViewController: UIViewController {
    
    @IBOutlet weak var collection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collection.delegate = self
        self.collection.dataSource = self
        self.collection.register(UINib(nibName: String(describing: BookListCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: "bookList")
    }
}

extension BookListViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection.dequeueReusableCell(withReuseIdentifier: "bookList", for: indexPath) as! BookListCollectionViewCell
        cell.textLabel.text = String(indexPath.row)
        return cell
    }
}
