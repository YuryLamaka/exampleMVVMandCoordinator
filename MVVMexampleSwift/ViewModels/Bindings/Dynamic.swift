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
}
