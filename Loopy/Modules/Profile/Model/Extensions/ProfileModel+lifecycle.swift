//
//  ProfileModel+lifecycle.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

extension ProfileViewModel {
    
    func viewDidLoad() {
        #warning("Using mock data for test news collections")
        output?.showNews(mockData)
    }
    
    func viewWillAppear() {}
    
    func viewDidAppear() {}
    
    func viewDidDisappear() {}
    
    func viewWillDisappear() {}
}
