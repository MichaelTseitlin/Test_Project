//
//  Router.swift
//  TestProject
//
//  Created by Michael Tseitlin on 28.09.2020.
//

import UIKit

protocol RouterProtocol {
    func inititalViewController()
    func moveToSecondScene(_ cats: [Cat])
}

class Router: RouterProtocol {
    
    var navigationController: UINavigationController?
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func inititalViewController() {
        guard let navigationController = navigationController else { return }
        let firstViewController = SceneBuilder.createFirstController(router: self)
        navigationController.pushViewController(firstViewController, animated: true)
    }
    
    func moveToSecondScene(_ cats: [Cat]) {
        guard let navigationController = navigationController else { return }
        let secondViewController = SceneBuilder.createSecondController(router: self, cats: cats)
        navigationController.pushViewController(secondViewController, animated: true)
    }
}
