//
//  AppDelegate.swift
//  TableViewCellManipulation
//
//  Created by Ben Anderson on 9/10/24.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // This function runs when the app finishes launching
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // Making a window that's the same size as the screen
        window = UIWindow(frame: UIScreen.main.bounds)

        // Here I’m setting up the first screen the app shows (I’ll need to change this to my actual view controller)
        let initialViewController = ViewController()
        
        let navigationController = UINavigationController(rootViewController: initialViewController)

        // Setting the window's main view to be the navigation controller
        window?.rootViewController = navigationController

        // This makes the window show up
        window?.makeKeyAndVisible()

        return true
    }

    // MARK: UISceneSession Lifecycle
    // These are extra methods used when the app supports multiple scenes 
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // This runs when a scene session gets thrown away, but nothing really to do here.
    }
}

