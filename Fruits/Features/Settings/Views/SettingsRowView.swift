//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Benjamin on 16/04/2022.
//

import SwiftUI

struct SettingsRowView: View {
    var title: String
    var content: String? = nil
    var link: String? = nil
    var linkTitle: String? = nil
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack {
                Divider().padding(.vertical,4)
                Text(title)
                    .foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkTitle != nil && link != nil {
                    HStack {
                        Link(destination: URL(string: "https://\(link!)")!)
                        {
                            Text(linkTitle!)
                    }
                        Image(systemName: "arrow.up.right.square")
                            .foregroundColor(.pink)
                    }
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(title: "Developer", content: "Benjmain.").preferredColorScheme(.dark).previewLayout(.fixed(width: 375, height: 80)).padding()
            SettingsRowView(title: "Developer", link: "google.com", linkTitle: "Google").preferredColorScheme(.dark).previewLayout(.sizeThatFits).padding()
        }
    }
}
