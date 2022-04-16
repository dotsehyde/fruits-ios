//
//  HeaderView.swift
//  Fruits
//
//  Created by Benjamin on 15/04/2022.
//

import SwiftUI

struct HeaderView: View {
    //MARK: Props
    @State private var isAnimate: Bool = false
    var data: Fruit

    //MARK: Body
    var body: some View {
        ZStack {
            LinearGradient(colors: data.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(data.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .white.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimate ? 1 : 0.5)
        }.frame(height: 440).onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimate = true
            }
        }
    }
}

//MARK: Preview
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(
            data: fruitData[0]).previewLayout(.fixed(width: 375, height: 440))
    }
}
