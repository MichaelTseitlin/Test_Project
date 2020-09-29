//
//  FirstInteractor.swift
//  TestProject
//
//  Created by Michael Tseitlin on 28.09.2020.
//

import Foundation

protocol FirstInteractorProtocol {
    func loadData()
}

class FirstInteractor: FirstInteractorProtocol {
    
    // MARK: - Properties
    
    var presenter: FirstPresenterProtocol?
    var router: RouterProtocol?
    
    let networkManager = NetworkManager.shared
    
    // MARK: - FirstInteractorProtocol
    
    func loadData() {
        let dispatchGroup = DispatchGroup()
        let countOfImages = 10
        var cats = [Cat]()
        
        for _ in 1...countOfImages {
            dispatchGroup.enter()
            networkManager.getImage { (result) in
                switch result {
                case .success(let cat):
                    cats.append(cat)
                    dispatchGroup.leave()
                case .failure(let error):
                    print(#line, #function, error)
                }
            }
        }
        
        dispatchGroup.notify(queue: .main) {
            self.presenter?.dataIsLoaded()
            self.router?.moveToSecondScene(cats)
        }
    }
}
