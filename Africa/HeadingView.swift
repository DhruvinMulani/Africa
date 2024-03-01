//
//  HeadingView.swift
//  Africa
//
//  Created by Dhruvin Mulani on 2024-02-29.
//

import SwiftUI

struct HeadingView: View {
    var headingImage : String
    var headingText: String
    var body: some View {
        HStack {
            
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingText:"wildrness lion pictures" )
        .previewLayout(.sizeThatFits)
        .padding()
}
