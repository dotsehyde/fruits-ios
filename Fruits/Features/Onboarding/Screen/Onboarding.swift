//
//  Onboarding.swift
//  Fruits
//
//  Created by Benjamin on 15/04/2022.
//

import SwiftUI

struct Onboarding: View {
    //MARK: Body
    let fruits: [Fruit] = fruitData
    var body: some View {
        TabView {
            ForEach(fruits[0...5], id: \.id) { item in
                CardView(data: item)
            }
        }
            .tabViewStyle(.page)
            .padding(.vertical, 20)
            .preferredColorScheme(.light)

    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
