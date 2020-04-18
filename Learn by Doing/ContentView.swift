//
//  ContentView.swift
//  Learn by Doing
//
//  Created by Max Aryus on 23.03.20.
//  Copyright © 2020 Max Aryus. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Poperties
    
    var card: [Card] = cardData
    
    //MARK: - CONTENT
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(card) { item in
                    CardView(card: item)
                }
            }
        .padding()
        }
        
        
    }
}


// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(card: cardData)
    }
}
