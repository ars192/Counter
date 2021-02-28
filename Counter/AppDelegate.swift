//
//  AppDelegate.swift
//  Counter
//
//  Created by Arystan on 2/28/21.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let nav = UINavigationController(rootViewController: ViewController())
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        return true
    }
    
}

