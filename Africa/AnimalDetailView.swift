//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Dhruvin Mulani on 2024-02-29.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: Properties
    let animal: Animal
    
    
    //MARK: Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20){
                
                // Hero Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                //Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical,8)
                    .foregroundColor(.primary)
                    .background(Color.accentColor
                        .frame(height: 6)
                        .offset(y:24)
                    )
                //Headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                //gallery
                
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    InsetGallaryView(animal: animal)
                    
                }.padding(.horizontal)
                
                //facts
                
                Group{
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                }.padding(.horizontal)
                
                InsetFactView(animal:animal)
                
                //description
                Group{
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }.padding(.horizontal)
                //map
                Group{
                    HeadingView(headingImage: "map", headingText: "National Park")
                    InsetMapView()
                    
                }.padding(.horizontal)
                
                //link
                Group{
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    
                    ExternalWeblinkView(animal: animal)
                    
                }.padding(.horizontal)
                
                
                    .navigationBarTitle("Learn about \(animal.name)",
                                        displayMode: .inline)
            }//scrollview
        }
    }
    
    
    struct AnimalDetailView_perview: PreviewProvider{
        
        
        static let animals: [Animal] = Bundle.main.decode("animals.json")
        
        static var previews: some View{
            NavigationView{
                AnimalDetailView(animal : animals[0])
            }
            .previewDevice("iphone 15 pro")
        }
    }
}
