//
//  Link.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 21.10.2022.
//

import Foundation

@propertyWrapper
struct Link<Wrapped: Codable>: Codable {
    var wrappedValue: Wrapped?
    
    // Init with current value
    init(wrappedValue: Wrapped?) {
        self.wrappedValue = wrappedValue
    }
    
    // Init from decoder (For example from server response)
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let stringURL = try? container.decode(String.self)
        if let stringURL { wrappedValue = URL(string: stringURL) as? Wrapped }
    }
    
    // Encoding value with default Encoder
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(wrappedValue)
    }
}
