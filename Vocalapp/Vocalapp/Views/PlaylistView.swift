//
//  PlaylistView.swift
//  Vocalapp
//
//  Created by Nazeer Greene on 11/5/21.
//

import SwiftUI

struct PlaylistView: View {
    var files: [String]
    
    var body: some View {
        //ScrollView{
            
            List {
                ForEach(self.files, id:\.self){ file in
                    Track(filename: file)
                        .padding(.vertical, 0)
                }
            }
        //}
    }
}

struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistView(files: ["bass", "high pitch", "supertonic"])
    }
}
