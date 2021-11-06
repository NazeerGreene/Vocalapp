//
//  ContentView.swift
//  Vocalapp
//
//  Created by Nazeer Greene on 11/5/21.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    private var isRecording = false
    private var name: Int = 0
/*
    private var player: AVAudioPlayer {
        guard let fileURL = Bundle.main.url(forResource: "StarsWars3", withExtension: "wav")
        else { return default value }

        var player = AVAudioPlayerPool.playerWithURL(url: fileURL)
        return player!
    }
*/
    var body: some View {
        
        NavigationView {
            //VStack{
                
                //ZStack {
                    
                    //Rectangle() // background
                        //.foregroundColor(.white)
                        //.ignoresSafeArea()
                    
                    VStack{ // title
                        
                        HStack{

                            Image("logo")
                                .resizable()
                                .frame(width: 50, height: 50)

                            Text("ocaloop")
                                .font(.system(size: 40))
                                .padding(.horizontal, -7)
                                .padding(.top, 15)
                            

                            /*Button(action: {},
                                   label: {
                                Image(systemName: "gearshape")
                                    .foregroundColor(.black)
                                    .font(.system(size: 30, weight: .semibold))
                            })*/
                            
                        } .padding(.top, -60)
                        
                        Spacer()
                        
                        PlaylistView(files: ["001", "002", "003", "004", "005"])
                        
                        Controls(
                            recordImage: (isRecording ? "stop.circle":"record.circle"),
                            recordAction: {},
                            playImage: "play.circle.fill",
                            playAction: {}
                        )
    
                    }
               //}
            //}
        } // navigationview
    } // body
} // view

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
