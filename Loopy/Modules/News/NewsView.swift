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
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 16) {
                StickyHeader {
                    Image(uiImage: ImageConfig.Mock.newsImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .frame(width: mainScreen.bounds.width, height: mainScreen.bounds.width * 0.7)
                Text(newsModel.newsItem.title)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(ColorConfig.lightLavender.SUIColor)
                    .padding([.leading, .trailing], 16)
                    .multilineTextAlignment(.leading)
                Rectangle()
                    .fill(ColorConfig.accentOrange.SUIColor)
                    .frame(height: 1)
                    .cornerRadius(0.5)
                    .padding([.leading, .trailing], 16)
                Text(newsModel.newsItem.text)
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(ColorConfig.lightLavender.SUIColor)
                    .padding([.leading, .trailing], 16)
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(ColorConfig.background.SUIColor)
        .edgesIgnoringSafeArea(.all)
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView(newsModel: .init(news: .mockItem))
    }
}
