//
//  Coordinator.swift
//  MVVMexampleSwift
//
//  Created by Yury Lamaka on 1.02.22.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController {get set}
    
    func start() 
}
