//
//  AppDelegate.swift
//  MVVMexampleSwift
//
//  Created by Yury Lamaka on 30.01.22.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

        var window: UIWindow?
        var coordinator: Appcoordinator?

            func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
                
                let navigationController = UINavigationController()
                coordinator = Appcoordinator(navigationController: navigationController)
                coordinator?.start()
                window = UIWindow(frame: UIScreen.main.bounds)
                window?.rootViewController = navigationController
                window?.makeKeyAndVisible()
                
               return true
    }
    
    }
   


