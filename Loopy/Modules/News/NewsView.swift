//
//  NewsView.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 29.10.2022.
//

import SwiftUI
import Kingfisher

struct NewsView: View {
    
    @ObservedObject var newsModel: NewsModel
    @State var isLoadingImage: Bool = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 16) {
                StickyHeader {
                    KFImage(newsModel.newsItem.imageLink)
                        .placeholder {
                            Image(uiImage: ImageConfig.Placeholders.newsPlaceholder)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        }
                        .onFailureImage(ImageConfig.Placeholders.newsPlaceholder)
                        .fade(duration: 0.25)
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
        .onDisappear { newsModel.dismissFlow?(true) }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView(newsModel: .init(news: .mockItem))
    }
}
