//
//  SceneBuilder.swift
//  TestProject
//
//  Created by Michael Tseitlin on 28.09.2020.
//

import UIKit

protocol SceneBuilderProtocol {
    static func createFirstController(router: RouterProtocol) -> UIViewController
    static func createSecondController(router: RouterProtocol, cats: [Cat]) -> UIViewController
}

class SceneBuilder: SceneBuilderProtocol {
    
    static func createFirstController(router: RouterProtocol) -> UIViewController {
        let firstViewController = FirstViewController()
        let interactor = FirstInteractor()
        let presenter = FirstPresenter()
        firstViewController.interactor = interactor
        interactor.presenter = presenter
        interactor.router = router
        presenter.view = firstViewController
        return firstViewController
    }
    
    static func createSecondController(router: RouterProtocol, cats: [Cat]) -> UIViewController {
        let secondViewController = SecondViewController(cats: cats)
        let interactor = SecondInteractor()
        let presenter = SecondPresenter()
        secondViewController.interactor = interactor
        interactor.presenter = presenter
        interactor.router = router
        presenter.view = secondViewController
        return secondViewController
    }
}
