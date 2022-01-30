//
//  ViewController.swift
//  MVVMexampleSwift
//
//  Created by Yury Lamaka on 30.01.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var labelStatus: UILabel!
    
    var viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }
    
    func bindViewModel() {
        viewModel.statusTextInfo.bind { (statusTextInfo) in
            DispatchQueue.main.async {
                self.labelStatus.text = statusTextInfo
            }
        }
    }


    @IBAction func loginButton(_ sender: Any) {
    }
}

