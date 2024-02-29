//
//  AnimalListItemview.swift
//  Africa
//
//  Created by Dhruvin Mulani on 2024-02-29.
//

import SwiftUI

struct AnimalListItemview: View {
    
    //MARK: Property
    let animal: Animal
    
    //MARK: Body
    var body: some View {
        HStack(alignment: .center, spacing: 16){
           
            
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90,height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading,spacing: 8){
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .padding(.trailing,8)
            }
        }// hstack
    }
}

//#Preview {
//    AnimalListItemview(animal: animal[1])
//}
