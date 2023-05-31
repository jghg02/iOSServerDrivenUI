//
//  NetWorkError.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 25-05-23.
//

import Foundation

enum NetWorkError: Error, Decodable, LocalizedError {
    case invalidURL
    case decodingError
    case invalidServerResponse
}

struct ErrorNetwork: LocalizedError, Decodable, Equatable {
    let status: Int
    let message: String
    var errorDescription: String? { message }
}
