//
//  Component.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 25-05-23.
//

import Foundation

enum ComponentType: String, Decodable {
    case featuredImage
}

struct Component: Decodable {
    let type: ComponentType
    let data: [String: String]
}
