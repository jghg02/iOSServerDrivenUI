//
//  PetListViewModel.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 30-05-23.
//

import Foundation

@MainActor
class PetListViewModel: ObservableObject {
    
    private var service: WebServices
    @Published var components: [UIComponent] = []
    
    init(service: WebServices = WebServices()) {
        self.service = service
    }
    
    func load() async {
        do {
            let screenModel = try await service.load(url: Constants.baseURL + Constants.petList)
            components = try screenModel.buildComponets()
        } catch {
            print(error)
        }
        
    }
}

