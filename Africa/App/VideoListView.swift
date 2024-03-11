//
//  VideoListView.swift
//  Africa
//
//  Created by Dhruvin Mulani on 2024-02-25.
//

import SwiftUI

struct VideoListView: View {
    
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: videoPlayerView(videoSelected: item.id, videoTitle: item.name) ) {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }
                }
                
            }//list
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action:{
                        videos.shuffle()
                        hapticImpact.impactOccurred() 
                    }) {
                        Image(systemName: "arrow.2.squarepath"
                        )
                    }
                }
            }//Navigation
        }
    }
}

struct VideoListView_perview: PreviewProvider{
  //  static let videos : [Video] = Bundle.main.decode("videos.json")

    static var previews: some View{
        
   VideoListView()
            
            
        
    }
}
