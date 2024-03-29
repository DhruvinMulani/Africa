//
//  GalleryView.swift
//  Africa
//
//  Created by Dhruvin Mulani on 2024-02-25.
//

import SwiftUI

struct GalleryView: View {

    @State private var selectedAnimal: String = "lion"

    let animals: [Animal] = Bundle.main.decode("animals.json")
    let haptic = UIImpactFeedbackGenerator(style: .medium)
    //simple grid defination
//    let gridLayout: [GridItem] = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//    ]
    
   // let gridLayout : [GridItem] = Array(repeating: GridItem(.flexible()), count:3)
    
    //dynamic grid layout
    
    @State private var gridLayout:[GridItem] = [GridItem(.flexible())]
    @State private var gridColumn:Double = 3.0
    
    func gridSwitch(){
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            
            VStack(alignment:.center,spacing:30) {
                
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth:8))
                
                    //slider
                
                Slider(value: $gridColumn, in:2...4, step:1)
                    .padding(.horizontal)
                    .onChange(of:gridColumn,perform:{ value in
                    gridSwitch()
                            
                    })
                
                LazyVGrid(columns: gridLayout, alignment: .center,spacing: 10){
                    ForEach(animals){item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
                            .onTapGesture {
                                selectedAnimal = item.image
                                haptic.impactOccurred()
                            }
                    }//loop
                }//grid
                .animation(.easeIn)
                .onAppear(perform: {
                    gridSwitch()
                })
            }//vstack
            .padding(.vertical,50)
            .padding(.horizontal,10)
            }
        
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(motionAnimationView())
        }
    }

#Preview {
    GalleryView()
}
