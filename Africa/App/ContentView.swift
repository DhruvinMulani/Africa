//
//  ContentView.swift
//  Africa
//
//  Created by Dhruvin Mulani on 2024-02-25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            //MARK: Propertis
        let animal: [Animal] = Bundle.main.decode("animals.json")
            //MARK: Body
        
        NavigationView {
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animal) {
                    animal in AnimalListItemview(animal: animal)
                }
            }
            .navigationBarTitle("Africa", displayMode: .large)
        }//NavigationView
       
    }
}

#Preview {
    ContentView()
}
