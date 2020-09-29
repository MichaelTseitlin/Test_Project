//
//  SecondViewController.swift
//  TestProject
//
//  Created by Michael Tseitlin on 28.09.2020.
//

import UIKit

enum Section {
    case main
}

protocol SecondViewControllerProtocol: class  {}

class SecondViewController: UIViewController {
    
    // MARK: - Properties
    
    var dataSource: DataSource!
    var interactor: SecondInteractorProtocol?
    private var cats: [Cat]!
    
    init(cats: [Cat]) {
        self.cats = cats
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - @IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - UIViewController's lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = DataSource(tableView: tableView)
        dataSource.configSnapshot(cats)
    }
}

// MARK: - MainViewControllerProtocol

extension SecondViewController: SecondViewControllerProtocol {}


