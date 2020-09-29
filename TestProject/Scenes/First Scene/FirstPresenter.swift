//
//  FirstPresenter.swift
//  TestProject
//
//  Created by Michael Tseitlin on 28.09.2020.
//

import Foundation

protocol FirstPresenterProtocol {
    func dataIsLoaded()
}

class FirstPresenter: FirstPresenterProtocol {
    
    // MARK: - Properties
    
    weak var view: FirstViewControllerProtocol?
    
    // MARK: - FirstPresenterProtocol
    
    func dataIsLoaded() {
        view?.stopActivityIndicator()
    }
}
