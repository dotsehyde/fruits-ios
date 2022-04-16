//
//  FruitsApp.swift
//  Fruits
//
//  Created by Benjamin on 15/04/2022.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage(newUserKey)var newUser: Bool = true
    var body: some Scene {
        WindowGroup {
            if newUser {
                Onboarding()
            }
            else {
                HomePage()
            }
        }
    }
}

