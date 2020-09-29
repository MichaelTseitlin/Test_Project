//
//  DataSource.swift
//  TestProject
//
//  Created by Michael Tseitlin on 28.09.2020.
//

import UIKit

class DataSource {
    
    // MARK: - Properties
    
    typealias DataSource = UITableViewDiffableDataSource<Section, Cat>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Section, Cat>
    
    var dataSource: DataSource!
    var snapshot = Snapshot()
    
    init(tableView: UITableView) {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: String(describing: UITableViewCell.self))
        configDataSource(tableView)
    }
    
    // MARK: - Private methods
    
    private func configDataSource(_ tableView: UITableView) {
        dataSource = DataSource(tableView: tableView, cellProvider: { (tableView, indexPath, cat) -> UITableViewCell? in
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: UITableViewCell.self), for: indexPath) 
            cell.imageView?.load(url: cat.file)
            cell.imageView?.contentMode = .scaleAspectFit
            cell.textLabel?.text = "Some text"
            return cell
        })
    }
    
    // MARK: - Public Methods
    
    func configSnapshot(_ cats: [Cat]) {
        snapshot.appendSections([.main])
        snapshot.appendItems(cats)
        dataSource.apply(snapshot)
    }
}
