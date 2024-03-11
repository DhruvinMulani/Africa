//
//  videoModel.swift
//  Africa
//
//  Created by Dhruvin Mulani on 2024-03-09.
//

import Foundation
import SwiftUI

struct Video: Codable, Identifiable {
    let id : String
    let name : String
    let headline : String
    
    //computed property
    var thumbnail : String{
        "video-\(id)"
    }
}
