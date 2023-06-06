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
    
    private enum CodingKeys: String, CodingKey {
        case petId
        case imageUrl
    }
}

struct Carousel: Decodable {
    
    let items: [Item]
    let action: Action
}
