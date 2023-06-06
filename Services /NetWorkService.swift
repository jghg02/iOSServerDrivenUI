//
//  NetWorkService.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 31-05-23.
//

import Foundation

protocol NetWorkService {
    func load(url: String) async throws -> Screen
}
