//
//  LocationModel.swift
//  Africa
//
//  Created by Dhruvin Mulani on 2024-03-10.
//

import Foundation
import MapKit

struct NationalParkLocation : Codable, Identifiable {
    
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    //computed property
    
    var location: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
}
