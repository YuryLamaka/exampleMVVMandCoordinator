//
//  ViewController.swift
//  MVVMexampleSwift
//
//  Created by Yury Lamaka on 30.01.22.
//

import UIKit

class LoginViewController: UIViewController, StoryBoardControl {
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var labelStatus: UILabel!
    
    var viewModel: LoginViewModel?
    
    var coordinator: Appcoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        
    }
    
    func bindViewModel() {
        viewModel?.statusTextInfo.bind { (statusTextInfo) in
            DispatchQueue.main.async {
                self.labelStatus.text = statusTextInfo
            }
        }
    }


    @IBAction func loginButton(_ sender: Any) {
        viewModel?.userButtonPressd(login: (loginField.text ?? ""), password: (passwordField.text ?? ""))
        if ((viewModel?.isLoggedIn) != nil) {
            coordinator?.isLoggedIn = ((viewModel?.isLoggedIn) != nil)
            coordinator?.showMain(login: loginField.text ?? "")
        }
    }
}

