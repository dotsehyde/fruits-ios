//
//  SourceLinkView.swift
//  Fruits
//
//  Created by Benjamin on 15/04/2022.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
                .font(.footnote)
        }
            .padding(.top, 10)
            .padding(.bottom, 40)
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView().previewLayout(.sizeThatFits)
    }
}
