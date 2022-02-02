//
//  DetailViewController.swift
//  MVVMexampleSwift
//
//  Created by Yury Lamaka on 2.02.22.
//

import UIKit

class DetailViewController: UIViewController, StoryBoardControl {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    weak var coordinator: Appcoordinator?
    var viewModel: DetailViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
   
    func updateUI() {
        nameLabel.text = viewModel?.model?.name
        cityLabel.text = viewModel?.model?.city
        emailLabel.text = viewModel?.model?.email
        phoneLabel.text = viewModel?.model?.phone
    }

    
}
