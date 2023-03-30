//
//  SearchResultViewController.swift
//  MovieMemoryApp
//
//  Created by 小野拓人 on 2023/03/21.
//

import UIKit

final class SearchResultViewController: UIViewController {

    // 画面遷移の影響か、collectionViewがnilになるため落ちる
    // 対策として、コードでcollectionViewを生成しているが、IBOutletを使用したいため要改善
    @IBOutlet weak private var collection: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        collection.delegate = self
        collection.dataSource = self
        collection.register(UINib(nibName: String(describing: BookListCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: "bookList")
    }
}

extension SearchResultViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection.dequeueReusableCell(withReuseIdentifier: "bookList", for: indexPath) as! BookListCollectionViewCell
        cell.textLabel.text = String(indexPath.row)
        return cell
    }
}
