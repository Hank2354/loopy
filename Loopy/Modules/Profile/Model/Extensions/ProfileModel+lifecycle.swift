//
//  ProfileModel+lifecycle.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

extension ProfileViewModel {
    
    func viewDidLoad() {
        output?.generalConfig()
        #warning("Using mock data for test news collections")
        output?.showNews(mockData)
        output?.configPlates()
        output?.installDailyProgressViewFromSUI(with: dailyProgressModel)
    }
    
    func viewWillAppear() {}
    
    func viewDidAppear() {}
    
    func viewDidDisappear() {}
    
    func viewWillDisappear() {}
}
