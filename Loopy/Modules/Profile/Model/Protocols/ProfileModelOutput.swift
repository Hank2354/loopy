//
//  ProfileModelOutput.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

protocol ProfileModelOutput: AnyObject {
    func generalConfig()
    func configPlates()
    func showNews(_ news: [NewsItem])
    func installDailyProgressViewFromSUI(with model: DailyProgressModel)
}
