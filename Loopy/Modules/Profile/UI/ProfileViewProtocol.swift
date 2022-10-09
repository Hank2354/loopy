//
//  ProfileViewProtocol.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

import UIKit

protocol ProfileViewProtocol where Self: UIViewController {
    
    var model: ProfileModelInput! { get set }
    
    // ...
}
