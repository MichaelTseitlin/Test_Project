//
//  FirstViewController.swift
//  TestProject
//
//  Created by Michael Tseitlin on 28.09.2020.
//

import UIKit

protocol FirstViewControllerProtocol: class {
    func stopActivityIndicator()
}

class FirstViewController: UIViewController {

    // MARK: - Properties

    var interactor: FirstInteractorProtocol?
    
    // MARK: - @IBOutlets
    @IBOutlet weak var loadButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    // MARK: - @IBActions
    
    @IBAction func goToSecondScreen() {
        loadButton.isHidden = true
        activityIndicator.startAnimating()
        interactor?.loadData()
    }
}

// MARK: - FirstViewControllerProtocol

extension FirstViewController: FirstViewControllerProtocol {
    func stopActivityIndicator() {
        loadButton.isHidden = false
        activityIndicator.stopAnimating()
    }
}
