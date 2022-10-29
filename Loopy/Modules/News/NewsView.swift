//
//  NewsView.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 29.10.2022.
//

import SwiftUI

struct NewsView: View {
    
    @ObservedObject var newsModel: NewsModel
    
    var body: some View {
        Button {
            newsModel.dismissFlow?(true)
        } label: {
            Text("DISMISS")
        }

    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView(newsModel: .init(news: .mockItem))
    }
}
