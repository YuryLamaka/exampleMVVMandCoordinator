//
//  Dynamic.swift
//  MVVMexampleSwift
//
//  Created by Yury Lamaka on 30.01.22.
//

import Foundation
//типа дженерик

class Dynamic<T> {
    typealias Listener = (T) -> Void
    private var listener: Listener?
    
    func bind(_ listener: Listener?) {
        self.listener = listener
    }
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ v: T) {
        value = v 
    }
}
