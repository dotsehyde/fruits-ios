//
//  ListCardView.swift
//  Fruits
//
//  Created by Benjamin on 15/04/2022.
//

import SwiftUI

struct ListCardView: View {
    //MARK: Props
    var data: Fruit
    //MARK: Body
    var body: some View {
        HStack {
            Image(data.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .white.opacity(0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(colors: data.gradientColors, startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(data.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(data.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
                
            }
        }
    }
}

//MARK: Preview
struct ListCardView_Previews: PreviewProvider {
    static var previews: some View {
        ListCardView(
            data: fruitData[0]
        ).previewLayout(.sizeThatFits).padding()
    }
}
