//
//  CardModel.swift
//  Learn by Doing
//
//  Created by Max Aryus on 23.03.20.
//  Copyright © 2020 Max Aryus. All rights reserved.
//

import SwiftUI

//MARK: - CARD MODEL

struct Card: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}
