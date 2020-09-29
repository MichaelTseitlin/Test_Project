//
//  SceneDelegate.swift
//  TestProject
//
//  Created by Michael Tseitlin on 28.09.2020.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        
        let navigationController = UINavigationController()
        let router = Router(navigationController)
        router.inititalViewController()
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}

