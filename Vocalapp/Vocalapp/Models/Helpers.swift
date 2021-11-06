//
//  Helpers.swift
//  Vocalapp
//
//  Created by Nazeer Greene on 11/6/21.
//

import Foundation


// Returns the app's designated document directory
// Inspired by Paul Hudson @ https://www.hackingwithswift.com/
func userDocDir() -> URL {
    let paths = FileManager
        .default
        .urls(for: .documentDirectory, in: .userDomainMask)
    
    return paths[0]
}

func addNewFile(filename: String) -> URL {
    let path = userDocDir()
    return path.appendingPathComponent(filename)
}
