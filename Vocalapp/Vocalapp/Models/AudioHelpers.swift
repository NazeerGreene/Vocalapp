//
//  AudioHelpers.swift
//  Vocalapp
//
//  Created by Nazeer Greene on 11/6/21.
//

import Foundation
import AVFoundation

// Code courtesy of Jonathon Manning & Paris Buttfield-Addison, published by O'Rielly

private var players : [AVAudioPlayer] = []

class AVAudioPlayerPool: NSObject {
    
    // Given the URL of a sound file, either create or reuse an audio player
    class func playerWithURL(url : URL) -> AVAudioPlayer? {
        
        // Try to find a player that can be reused and is not playing
        let availablePlayers = players.filter { (player) -> Bool in
            return player.isPlaying == false && player.url == url
        }
        
        // If we found one, return it
        if let playerToUse = availablePlayers.first {
            print("Reusing player for \(url.lastPathComponent)")
            return playerToUse
        }
        
        // Didn't find one? Create a new one
        //var error : NSError? = nil
        var newPlayer: AVAudioPlayer
        
        do {
            newPlayer = try AVAudioPlayer(contentsOf:url)
            print("Creating new player for url \(url.lastPathComponent)")
            players.append(newPlayer)
            return newPlayer
        } catch {
            // We might not be able to create one, so log and return nil
            print("Couldn't load \(url.lastPathComponent)")
            return nil
        }
    }
}

