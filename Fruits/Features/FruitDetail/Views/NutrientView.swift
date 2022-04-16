//
//  NutrientView.swift
//  Fruits
//
//  Created by Benjamin on 15/04/2022.
//

import SwiftUI

struct NutrientView: View {
    //MARK: Props
    var data: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    //MARK: Body
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(nutrients.indices, id: \.self) { i in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[i])
                        }
                            .foregroundColor(data.gradientColors[1])
                            .font(.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(data.nutrition[i])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

//MARK: Preview
struct NutrientView_Previews: PreviewProvider {
    static var previews: some View {
        NutrientView(data: fruitData[0]).preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
    }
}
