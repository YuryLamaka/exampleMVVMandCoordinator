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
    
    func start() {
         
    }
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
}
