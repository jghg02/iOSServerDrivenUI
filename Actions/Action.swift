//
//  Action.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 06-06-23.
//

import Foundation

enum ActionType: String, Decodable {
    case sheet
}

struct Action: Decodable {
    let type: ActionType
    let destination: Route
}
