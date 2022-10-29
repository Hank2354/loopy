//
//  CallOnFlyOperator.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 27.10.2022.
//

import Foundation

// MARK: - * (overloaded)

@inline(__always)
@discardableResult
public func *<T>(object: T, closure: (T) -> Void) -> T {
    closure(object)
    return object
}
