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
        static let petListing = "/pet-listing"
        static let petDetails = "/pet-detail"

        static func petDetail(petId: Int) -> String {
            return petDetails + "/\(petId)"
        }
        
        static func resource(for resourceName: String) -> URL? {
            
            var components = URLComponents()
            components.scheme = "http"
            components.host = "localhost"
            components.port = 3000
            components.path = resourceName
            return components.url
        }

    }
    
    
    static let petList = "/pet-listing"
}
