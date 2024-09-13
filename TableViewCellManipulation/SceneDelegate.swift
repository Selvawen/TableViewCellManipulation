//
//  SceneDelegate.swift
//  TableViewCellManipulation
//
//  Created by Ben Anderson on 9/10/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }

        // Create a new UIWindow and assign it to the window property
        window = UIWindow(windowScene: windowScene)

        // Create an instance of your initial view controller
        let viewController = thisTableViewVC()

        // Set the root view controller of the window
        window?.rootViewController = UINavigationController(rootViewController: viewController)

        // Make the window visible
        window?.makeKeyAndVisible()
    }
}

