//
//  BaseViewModel.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

import Foundation

protocol BaseViewModel: AnyObject {
    // Lifecycle methods
    func viewDidLoad()
    func viewWillAppear()
    func viewDidAppear()
    func viewDidDisappear()
    func viewWillDisappear()
}

// MARK: - Notification support
extension BaseViewModel {
    /// Add self for observer for notification with specifed name
    func addObserver(selector: Selector, name: NSNotification.Name?) {
        notificationCenter.addObserver(self, selector: selector, name: name, object: nil)
    }
    
    var notificationCenter: NotificationCenter {
        return NotificationCenter.default
    }
}
