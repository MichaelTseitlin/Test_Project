//
//  SecondPresenter.swift
//  TestProject
//
//  Created by Michael Tseitlin on 28.09.2020.
//

import Foundation

protocol SecondPresenterProtocol {}

class SecondPresenter: SecondPresenterProtocol {
    
    // MARK: - Properties
    
    weak var view: SecondViewControllerProtocol?
    
    // MARK: - MainPresenterProtocol
}
