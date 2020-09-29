//
//  SecondInteractor.swift
//  TestProject
//
//  Created by Michael Tseitlin on 28.09.2020.
//

import Foundation

protocol SecondInteractorProtocol {}

class SecondInteractor: SecondInteractorProtocol {
    
    // MARK: - Properties
    
    var presenter: SecondPresenterProtocol?
    var router: RouterProtocol?
        
    // MARK: - SecondInteractorProtocol
}
