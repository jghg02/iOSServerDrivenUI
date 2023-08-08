//
//  Component.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 25-05-23.
//

import Foundation

enum ComponentType: String, Decodable {
    case featuredImage
    case carousel
    case textRow
    case rating
}

struct Component: Decodable {
    let type: ComponentType
    let data: [String: Any]
    
    private enum CodingKeys: CodingKey {
        case type
        case data
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try container.decode(ComponentType.self, forKey: .type)
        self.data = try container.decode(JSON.self, forKey: .data).value as! [String: Any]
    }
}
