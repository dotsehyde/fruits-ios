//
//  FruitDetail.swift
//  Fruits
//
//  Created by Benjamin on 15/04/2022.
//

import SwiftUI

struct FruitDetail: View {
    //MARK: Props
    var fruit: Fruit
    //MARK: Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    //MARK: Header
                    HeaderView(data: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        //MARK: Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])

                        //MARK: Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //MARK: Nutrients
                        NutrientView(data: fruit)
                        //MARK: Subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .foregroundColor(fruit.gradientColors[1])
                            .fontWeight(.bold)
                        //MARK: Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //MARK: Link
                        SourceLinkView()
                    }
                        .padding(.horizontal, 20)
                        .frame(maxWidth: 640, alignment: .center)
                }
                    .navigationBarHidden(true)
            }
                .edgesIgnoringSafeArea(.top)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: Preview
struct FruitDetail_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetail(fruit: fruitData[0])
    }
}
