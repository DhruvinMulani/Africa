//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Dhruvin Mulani on 2024-03-12.
//

import SwiftUI

struct AnimalGridItemView: View {
    
    let animal:Animal
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
        
    }
}

struct AnimalGridItemView_perview: PreviewProvider{
    static let animals : [Animal] = Bundle.main.decode("animals.json")

    static var previews: some View{
        
        AnimalGridItemView(animal: animals[0])
            
            
        
    }
}
