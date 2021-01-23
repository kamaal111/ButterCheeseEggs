//
//  AppDelegate.swift
//  ButterCheeseEggs
//
//  Created by Kamaal M Farah on 22/01/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        if #available(iOS 13.0, *) {
            window.backgroundColor = .systemBackground
        } else {
            window.backgroundColor = .white
        }
        if #available(iOS 11.0, *) {
            window.tintColor = UIColor(named: "AccentColor")
        } else {
            window.tintColor = UIColor(red: 0.911, green: 0.592, blue: 0.212, alpha: 1)
        }
        let homeViewController = HomeViewController()
        let navigationController = UINavigationController(rootViewController: homeViewController)
        window.rootViewController = navigationController
        self.window = window
        self.window?.makeKeyAndVisible()
        return true
    }

}
