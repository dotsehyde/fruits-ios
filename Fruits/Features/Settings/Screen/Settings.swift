//
//  Settings.swift
//  Fruits
//
//  Created by Benjamin on 15/04/2022.
//

import SwiftUI

struct Settings: View {
    //MARK: Prop
    @Environment(\.presentationMode)var pM
    @AppStorage(newUserKey) var newUser: Bool = false
    //MARK: Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: Section 1
                    GroupBox(label: SettingsLabelView(labelText: "Fruits", icon: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable().scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(10)
                            Text("Most Fruits are naturally low in fat, sodium and carlories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    }
                    //MARK: Section 2
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        Text("You can restart the app by toggling the switch below. The app will start from onboarding screen and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minWidth: 60)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                            .layoutPriority(1)

                        Toggle("Restart".uppercased(), isOn: $newUser)
                            .padding()
                            .background(Color(UIColor.tertiarySystemBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    } label: {
                        SettingsLabelView(labelText: "Customization", icon: "paintbrush")
                    }


                    //MARK: Section 3
                    GroupBox {

                        SettingsRowView(title: "Developer", content: "Benjamin.")
                        SettingsRowView(title: "Designer", content: "Benjamin.")
                        SettingsRowView(title: "Compatibilty", content: "iOS 15.4")
                        SettingsRowView(title: "Website", link: "dotsehyde.github.io", linkTitle: "My Portfolio")
                        SettingsRowView(title: "Twitter", link: "twitter.com/dotsehyde", linkTitle: "@dotsehyde")
                        SettingsRowView(title: "SwiftUI", content: "2.0")
                        SettingsRowView(title: "Version", content: "1.1.0 ")
                    } label: {
                        SettingsLabelView(labelText: "Application", icon: "apps.iphone")
                    }
                }
                    .navigationBarTitle(Text("Settings"), displayMode: .large).padding()
                    .navigationBarItems(trailing: Button(action: {
                    pM.wrappedValue.dismiss()
                }, label: {
                    if newUser {
                        EmptyView()
                    } else {
                        Image(systemName: "xmark")
                            .padding(10)
                            .background(.ultraThinMaterial)
                            .clipShape(Circle())
                    }

                }))
            }
        }
    }
}

//MARK: Preview
struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings().preferredColorScheme(.dark)
    }
}
