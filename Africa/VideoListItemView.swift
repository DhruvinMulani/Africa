//
//  VideoListItem.swift
//  Africa
//
//  Created by Dhruvin Mulani on 2024-03-09.
//

import SwiftUI

struct VideoListItemView: View {
    let video : Video
    
    
    var body: some View {
        HStack(spacing:10) {
            ZStack {
                Image(video.thumbnail)")
                .resizable()
                .scaledToFit()
                .frame(height: 80)
            .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
                
            
            }//zstack
            VStack(alignment: .leading, spacing: 10){
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)

            }
        }
   }
}


struct VideoListItem_perview: PreviewProvider{
    static let videos : [Video] = Bundle.main.decode("videos.json")

    static var previews: some View{
        
   VideoListItemView(video: videos[0])
            .previewLayout(.sizeThatFits)
            
        
    }
}
