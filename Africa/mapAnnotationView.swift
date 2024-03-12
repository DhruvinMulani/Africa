//
//  mapAnnotationView.swift
//  Africa
//
//  Created by Dhruvin Mulani on 2024-03-11.
//

import SwiftUI


struct mapAnnotationView: View {
    
    var location: NationalParkLocation
    
    @State private var animation : Double = 0.0

    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54,height: 54, alignment: .center)
           
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            Image(location .image)
                .resizable()
                .scaledToFit()
                .frame(width: 48,height: 48,alignment: .center)
            .clipShape(Circle() )
        }
       
        
        .onAppear{
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}


struct mapAnnotationView_perview: PreviewProvider{
    static let locations : [NationalParkLocation] = Bundle.main.decode("locations.json")

    static var previews: some View{
        
        mapAnnotationView(location: locations[1])
            .previewLayout(.sizeThatFits)
            
        
    }
}

