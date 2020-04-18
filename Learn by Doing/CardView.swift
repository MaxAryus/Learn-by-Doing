//
//  CardView.swift
//  Learn by Doing
//
//  Created by Max Aryus on 23.03.20.
//  Copyright © 2020 Max Aryus. All rights reserved.
//

import SwiftUI

struct CardView: View {
    //MARK: - PROPERTIES
    
    var card: Card
    
    @State private var fadeIn: Bool = false
    @State private var moveDownward: Bool = false
    @State private var moveupward: Bool = false
    
    
    // MARK: - CARD
    
    var body: some View {
        ZStack {
            Image(card.imageName)
                .padding()
                .opacity(fadeIn ? 1.0 : 0.0)
            
            VStack {
                Text(card.title)
                    .foregroundColor(Color.white)
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
            }
            .offset(y: moveDownward ? -218 : -300)
            
            Button(action: {
                print("Button was tapped")
                
                playSound(sound: "sound-chime", type: "mp3")
            }) {
                HStack {
                    Text(card.callToAction)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .accentColor(Color.white)
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(Color.white)
                }
                .padding(.vertical)
                .padding(.horizontal, 24)
                .background(LinearGradient(gradient: Gradient(colors: card.gradientColors),startPoint: .leading, endPoint: .trailing))
            .clipShape(Capsule())
            .shadow(color: Color("ColorShape"), radius: 6, x: 0, y: 3)
            }
            .offset(y: moveupward ? 210 : 300)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
        .onAppear() {
            withAnimation(.linear(duration: 1.2)) {
                self.fadeIn.toggle()
                
            }
            withAnimation(.linear(duration: 0.8)) {
                self.moveDownward.toggle()
                self.moveupward.toggle()
            }
        }
    }
}

// MARK: - PREVIEW

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[0])
            .previewLayout(.sizeThatFits)
    }
}
