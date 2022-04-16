//
//  HomePage.swift
//  Fruits
//
//  Created by Benjamin on 15/04/2022.
//

import SwiftUI

struct HomePage: View {
    //MARK: Props
    @State private var isShowSettings = false
    var fruits: [Fruit] = fruitData

    //MARK: Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled(), id: \.id) { item in
                    NavigationLink {
                        FruitDetail(fruit: item)
                    } label: {
                        ListCardView(data: item)
                            .padding(.vertical, 4)
                    }
                }

            }
                .navigationTitle("Fruits")
                .navigationBarItems(
                leading: EditButton(),
                trailing: Button(action: {
                    isShowSettings = true
                }, label: { Image(systemName: "slider.horizontal.3") }
                )
                    .sheet(isPresented: $isShowSettings, content: {
                    Settings()
                })
            )

        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: Preview
struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage().previewDevice("iPhone13")
    }
}
