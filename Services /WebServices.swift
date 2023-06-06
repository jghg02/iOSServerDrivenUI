//
//  WebServices.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 25-05-23.
//

import Foundation
import NET

class WebServices: NetWorkService {
    
    func load(url: String) async throws -> Screen {
        /*
        guard let url = URL(string: url) else {
            throw NetWorkError.invalidURL
        }*/
        guard let url = Constants.ScreenResources.resource(for: url) else {
            throw NetWorkError.invalidURL
        }
        
        let client = NETClient<Screen, ErrorNetwork>()
        let request = NETRequest(url: url)
        switch await client.request(request) {
        case .success(let data):
            dump(data.value)
            return data.value
        case .failure(let error):
            print(error.localizedDescription)
            throw NetWorkError.invalidServerResponse
        }
    }
    
}
