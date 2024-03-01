//
//  insetFactView.swift
//  Africa
//
//  Created by Dhruvin Mulani on 2024-02-29.
//

import SwiftUI

struct insetFactView: View {
    let animal: Animal
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }//tab
            .tabViewStyle(PageTabViewStyle())
            .frame(minWidth: 148, idealHeight: 168, maxHeight: 180)
        }//Groupbox
    }
}

struct insetFactView_perview: PreviewProvider{
    
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View{
        NavigationView{
            insetFactView(animal : animals[0])
        }
        .previewDevice("iphone 15 pro")
    }
}
