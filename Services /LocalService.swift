//
//  LocalService.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 31-05-23.
//

import Foundation

class LocalService: NetWorkService {
    
    func load(url: String) async throws -> Screen {
        guard let path = Bundle.main.path(forResource: url, ofType: "json") else {
            fatalError("Resource name file not found!!!")
        }
        
        let data = try Data(contentsOf: URL(fileURLWithPath: path))
        let screen = try JSONDecoder().decode(Screen.self, from: data)
        return screen
    }
        
}
