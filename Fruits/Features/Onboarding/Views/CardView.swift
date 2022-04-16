//
//  CardView.swift
//  Fruits
//
//  Created by Benjamin on 15/04/2022.
//

import SwiftUI

struct CardView: View {
    //MARK: Props
    @State private var isAnimated: Bool = false
    let data: Fruit
    //MARK: Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //MARK: Image
                Image(data.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .white.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimated ? 1 : 0.6)
                    .opacity(isAnimated ? 1 : 0)

                //MARK: Title
                Text(data.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .white.opacity(0.15), radius: 2, x: 2, y: 2)
                //MARK: Headline
                Text(data.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 460)
                //MARK: Button
                StartButtonView()
            }
        }
            .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimated = true
            }
        })
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(LinearGradient(colors: data.gradientColors, startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
            .padding(.horizontal, 20)
//            .padding(.vertical, 30)

    }
}

//MARK: Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(data: fruitData[4]).previewLayout(.fixed(width: 320, height: 640))
    }
}
