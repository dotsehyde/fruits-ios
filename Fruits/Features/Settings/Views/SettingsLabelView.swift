//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Benjamin on 15/04/2022.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: Props
    var labelText:String
    var icon:String
    //MARK: Body
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: icon)
        }
    }
}

//MARK: Preview
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fruits", icon: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
