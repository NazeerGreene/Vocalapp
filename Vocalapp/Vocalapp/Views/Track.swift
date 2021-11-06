//
//  Track.swift
//  Vocalapp
//
//  Created by Nazeer Greene on 11/5/21.
//

import SwiftUI

struct Track: View {
    let filename: String
    
    var body: some View {
        HStack{
            Button(
                action: {
                    
                },
                label: {
                    Image(systemName: "play")
                        .symbolRenderingMode(.multicolor)
                        .foregroundColor(Color(red: 0.3, green: 0.74, blue: 0.95))
                        .font(.system(size: 25, weight: .semibold))
                }
            ) .padding(.horizontal, 10)
                        
            Text(filename)
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
    }
}

struct Track_Previews: PreviewProvider {
    static var previews: some View {
        Track(filename: "bass.wav")
    }
}
