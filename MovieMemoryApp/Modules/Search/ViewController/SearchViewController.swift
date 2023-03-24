//
//  SearchViewController.swift
//  MovieMemoryApp
//
//  Created by 小野拓人 on 2023/03/21.
//

import Foundation
import UIKit

final class SearchViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: String(describing: SearchTableViewCell.self), bundle: nil), forCellReuseIdentifier: "searchCell")
    }
}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "searchCell", for: indexPath) as! SearchTableViewCell
        cell.searchText.text = String(indexPath.row)
        return cell
    }
}
