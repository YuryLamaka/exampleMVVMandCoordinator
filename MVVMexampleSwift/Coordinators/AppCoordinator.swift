//
//  AppCoordinator.swift
//  MVVMexampleSwift
//
//  Created by Yury Lamaka on 1.02.22.
//

import UIKit

class Appcoordinator: Coordinator {
    var navigationController: UINavigationController
    
    var isLoggedIn: Bool = false
    
    init(navigationController: UINavigationController) {
           self.navigationController = navigationController
       }
    
    func start() {
        if isLoggedIn {
            showMain()
        } else {
            showLogin()
        }
    }
    
    func showLogin() {
        
    }
   
    func showMain() {
        
    }
    
}
