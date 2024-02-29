//
//  MainView.swift
//  Africa
//
//  Created by Dhruvin Mulani on 2024-02-25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browser")
                }
            VideoListView()
                .tabItem { Image(systemName: "play.rectangle")
                Text("Watch")}
            
            MapView()
                .tabItem { Image(systemName: "map")
                Text("Location")}
            
            GalleryView()
                .tabItem { Image(systemName: "photo")
                Text("Gallery")}
        }//Tab
    }
}

#Preview {
    MainView()
}
