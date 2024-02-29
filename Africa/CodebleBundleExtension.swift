//
//  CodebleBundleExtension.swift
//  Africa
//
//  Created by Dhruvin Mulani on 2024-02-27.
//

import Foundation

extension Bundle{
    func decode<T: Codable>(_ file: String) -> T {
        //1. locate json
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locat \(file) in bundle")
        }

        //2. create a property for the data
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locat \(file) in bundle")
        }
        //3. create a decode
        let decoder = JSONDecoder()

        
        //4. create a property for the decode data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to locat \(file) in bundle")
        }
        
        //5. Return the ready to use data
        
        return loaded
        
        
        
    }
}

