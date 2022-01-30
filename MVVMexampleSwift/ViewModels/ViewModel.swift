//
//  ViewModel.swift
//  MVVMexampleSwift
//
//  Created by Yury Lamaka on 30.01.22.
//

import Foundation

class ViewModel {
    var statusTextInfo = Dynamic("")
    
    func userButtonPressd(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].password {
            statusTextInfo.value = "Log is failed."
        } else {
            statusTextInfo.value = "Logged in."
        }
    }
}
