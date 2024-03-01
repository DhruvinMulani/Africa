//
//  insetGallaryView.swift
//  Africa
//
//  Created by Dhruvin Mulani on 2024-02-29.
//

import SwiftUI

struct insetGallaryView: View {
    
    let animal :Animal
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 15){
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            }
            
        }
        
    }
}

struct InsetView_perview: PreviewProvider{

    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View{
            insetGallaryView(animal : animals[0])
    }
}
