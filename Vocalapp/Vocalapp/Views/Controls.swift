//
//  Controls.swift
//  Vocalapp
//
//  Created by Nazeer Greene on 11/6/21.
//

import SwiftUI

struct Controls: View {
    var recordImage: String
    var recordAction:() -> Void
    var playImage: String
    var playAction: () -> Void
        
    var body: some View {
        HStack{
            Button {
                recordAction()
            } label: {
                Image(systemName: recordImage)
                    .symbolRenderingMode(.monochrome)
                    .foregroundColor(Color.red)
                    .font(.system(size: 100, weight: .regular))
                    .shadow(radius: 8)
            }
            
            Button {
                playAction()
            } label: {
                Image(systemName: playImage)
                    .symbolRenderingMode(.monochrome)
                    .foregroundColor(Color.red)
                    .font(.system(size: 100, weight: .regular))
                    .shadow(radius: 8)
            }
            
            //Circle()
            //.foregroundColor(Color.red)
            //.shadow(radius: 10)
            //.overlay(Circle().stroke(Color.white, lineWidth: 15))
            //.padding(1)
            //.overlay(Circle().stroke(Color.black, lineWidth: 5))
            
        }
    }
}

struct Controls_Previews: PreviewProvider {
    static var previews: some View {
        Controls(recordImage: "record.circle",
                 recordAction: {},
                 playImage: "play.circle.fill",
                 playAction: {}
        )
    }
}
