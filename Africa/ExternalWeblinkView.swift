//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Dhruvin Mulani on 2024-03-04.
//

import SwiftUI

struct ExternalWeblinkView: View {
    let animal: Animal
    
    
    var body: some View {
        GroupBox{
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name,destination: (URL(string:animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }.foregroundColor(.accentColor)
            }//hstack
        }
    }
}

struct ExternalWeblink_perview: PreviewProvider{
    
    
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View{
        NavigationView{
            ExternalWeblinkView(animal : animals[0])
        }
        .previewDevice("iphone 15 pro")
        
    }
}
