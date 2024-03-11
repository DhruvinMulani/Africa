//
//  MapView.swift
//  Africa
//
//  Created by Dhruvin Mulani on 2024-02-25.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region : MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude:16.4377599)
        
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations : [NationalParkLocation] = Bundle.main.decode("dhruvin.json")
    var body: some View {
        // basic map
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent:{ item in
            
            // MapPin(coordinate: item.location, tint: .accentColor)
            
            // MapMarker(coordinate: item.location,tint: .accentColor)
            
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32,height: 32,alignment: .center)
            }
            
            
        })
    }
}

#Preview {
    MapView()
}
