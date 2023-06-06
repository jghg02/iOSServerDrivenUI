//
//  Constants.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 25-05-23.
//

import Foundation

struct Constants {
    
    struct ScreenResources {
        static let baseUrl = "localhost:3000"
        static let petListing = "pet-listing"
        
        static func resource(for resourceName: String) -> URL? {
            
            var components = URLComponents()
            components.scheme = "http"
            components.host = "localhost"
            components.port = 3000
            components.path = "/pet-listing"
            return components.url
        }

    }
    
    
    static let petList = "/pet-listing"
}
