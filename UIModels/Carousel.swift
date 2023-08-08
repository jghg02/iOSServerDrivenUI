//
//  Carousel.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 06-06-23.
//

import Foundation


struct Item: Decodable, Identifiable {
    let id = UUID()
    let petId: Int
    let imageUrl: URL
    let description: String
    
    private enum CodingKeys: String, CodingKey {
        case petId
        case imageUrl
        case description
    }
}

struct Carousel: Decodable {
    
    let items: [Item]
    let action: Action
}
