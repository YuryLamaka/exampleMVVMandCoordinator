//
//  User.swift
//  MVVMexampleSwift
//
//  Created by Yury Lamaka on 30.01.22.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [
    User(login: "qwerty", password: "12345")
    ]
}


