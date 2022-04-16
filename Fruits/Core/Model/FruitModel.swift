//
//  FruitModel.swift
//  Fruits
//
//  Created by Benjamin on 15/04/2022.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
