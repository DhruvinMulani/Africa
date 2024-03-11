//
//  videoPlayerView.swift
//  Africa
//
//  Created by Dhruvin Mulani on 2024-03-10.
//

import SwiftUI
import AVKit


struct videoPlayerView: View {
    var videoSelected : String
    var videoTitle   : String
    
    
    var body: some View {
        
        
        VStack {
            VideoPlayer(player: playVideo(filename: videoSelected, fileFormate: "mp4")){
                //Text(videoTitle)
            }
            .overlay(
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .padding(.top,6)
                .padding(.horizontal,8)
            ,alignment: .topLeading )
        }//vstack
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle,displayMode: .inline)
        
    }
}

#Preview {
    videoPlayerView(videoSelected: "lion", videoTitle: "Lion")
}
