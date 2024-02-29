//
//  CoverImageView.swift
//  Africa
//
//  Created by Dhruvin Mulani on 2024-02-25.
//

import SwiftUI

struct CoverImageView: View {
//MARK: Properties
    
    let coverImages:[CoverImage] = Bundle.main.decode("covers.json")
    
//MARK: Body
    
    var body: some View {
        
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            }//loop
        }
        
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    CoverImageView()
}

