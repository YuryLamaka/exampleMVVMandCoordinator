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
            showMain(login: User.logins[0].login!)
        } else {
            showLogin()
        }
    }
    
    func showLogin() {
        let viewController = LoginViewController.createObject()
        viewController.coordinator = self
        viewController.viewModel = LoginViewModel()
        viewController.viewModel?.isLoggedIn = isLoggedIn
        navigationController.pushViewController(viewController, animated: true)
    }
   
    func showMain(login: String) {
        let viewController = MainViewController.createObject()
        let viewModel = MainViewModel()
        viewModel.login = login
        viewController.coordinator = self
        viewController.viewModel = MainViewModel()
        navigationController.viewControllers.removeAll()
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func showDetail() {
        let viewController = DetailViewController.createObject()
        let viewModel = DetailViewModel()
        viewModel.model = UserData.userData
        viewController.coordinator = self
        viewController.viewModel = viewModel
        navigationController.pushViewController(viewController, animated: true)
    }
    
}
