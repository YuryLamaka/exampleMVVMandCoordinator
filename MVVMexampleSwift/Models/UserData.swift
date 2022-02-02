//
//  UserData.swift
//  MVVMexampleSwift
//
//  Created by Yury Lamaka on 2.02.22.
//

import Foundation


struct UserData {
    var name: String?
    var city: String?
    var email: String?
    var phone: String?
}

extension UserData {
    static var userData = UserData(name: "Yury", city: "Minsk", email: "123@ya.com", phone: "+810 375 75 75")
}
