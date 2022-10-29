//
//  DailyProgressView.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 29.10.2022.
//

import SwiftUI

struct DailyProgressView: View {
    
    @ObservedObject var model: DailyProgressModel
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(getBackgroundGradient())
                .fillAllSpace()
                .cornerRadius(40)
            HStack(spacing: 23) {
                ZStack(alignment: .center) {
                    Title()
                }.fillAllSpace()
                CustomCircleProgressView()
            }
            .padding(.trailing, 33)
            
        }
    }
    
    func ModifedText(_ text: String) -> some View {
        Text(text)
            .font(.system(size: 23, weight: .bold))
            .foregroundColor(.white)
    }
    
    func PercentValue(_ value: Int) -> some View {
        HStack(alignment: .bottom, spacing: 3) {
            Text(String(value))
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(.white)
            Text("%")
                .font(.system(size: 8, weight: .bold))
                .foregroundColor(.white)
                .padding(.bottom, 2) // fix baseline
        }
    }
    
    func Title() -> some View {
        VStack(spacing: 0) {
            ModifedText("Мой план на")
            ModifedText("сегодня")
        }
    }
    
    func CustomCircleProgressView() -> some View {
        ZStack {
            PercentValue(Int(model.progress * 100))
            Circle()
                .stroke(
                    Color(hex: "#FFC700"),
                    lineWidth: 8
                )
                .frame(width: 80, height: 80)
            Circle()
                .trim(from: 0, to: model.progress)
                .stroke(
                    Color(hex: "#FF6B00"),
                    style: StrokeStyle(
                        lineWidth: 8,
                        lineCap: .round
                    )
                )
                .frame(width: 80, height: 80)
                .rotationEffect(.degrees(-90))
        }
    }
    
    func getBackgroundGradient() -> LinearGradient {
        LinearGradient(colors: [Color(hex: "#F0774A"),
                                Color(hex: "#FFD571")],
                       startPoint: .init(x: 0.45,
                                         y: 0),
                       endPoint: .init(x: 0.65,
                                       y: 1.6))
    }
    
}

private extension View {
    func fillAllSpace() -> some View {
        self.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct DailyProgressView_Previews: PreviewProvider {
    static var previews: some View {
        DailyProgressView(model: .init())
    }
}
