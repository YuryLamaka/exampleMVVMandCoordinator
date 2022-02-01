//
//  StoryBoardControl.swift
//  MVVMexampleSwift
//
//  Created by Yury Lamaka on 1.02.22.
//

import UIKit

protocol StoryBoardControl {
    static func createObject() -> Self
}

extension StoryBoardControl where Self: UIViewController {
    static func createObject() -> Self {
    let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
