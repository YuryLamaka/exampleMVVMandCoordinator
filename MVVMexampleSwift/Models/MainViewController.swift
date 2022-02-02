//
//  MainViewController.swift
//  MVVMexampleSwift
//
//  Created by Yury Lamaka on 1.02.22.
//

import UIKit

class MainViewController: UIViewController, StoryBoardControl {
    
    @IBOutlet weak var mainLabel: UILabel!
    
    weak var coordinator: Appcoordinator?
    
    var viewModel: MainViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "Hello \(viewModel?.login ?? "default")"
    }
    @IBAction func aboutButton(_ sender: Any) {
        coordinator?.showDetail()
    }
}
