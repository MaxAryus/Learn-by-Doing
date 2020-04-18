//
//  PlaySounds.swift
//  Learn by Doing
//
//  Created by Max Aryus on 24.03.20.
//  Copyright © 2020 Max Aryus. All rights reserved.
//

import Foundation
import AVFoundation

// MARK: - AUDIO PLAYER

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    
}
