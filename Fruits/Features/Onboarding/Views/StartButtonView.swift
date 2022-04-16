//
//  StartButtonView.swift
//  Fruits
//
//  Created by Benjamin on 15/04/2022.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: Props
    @AppStorage(newUserKey)var newUser = true
    //MARK: Body
    var body: some View {
        Button {
            withAnimation {
                newUser = false
            }

        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(Capsule()
                .strokeBorder(.white, lineWidth: 1.25))
        }
            .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView().preferredColorScheme(.dark).previewLayout(.sizeThatFits)
    }
}
