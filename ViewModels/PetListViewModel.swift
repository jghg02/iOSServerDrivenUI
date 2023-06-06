//
//  PetListViewModel.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 30-05-23.
//

import Foundation

@MainActor
class PetListViewModel: ObservableObject {
    
    private var service: NetWorkService
    @Published var components: [UIComponent] = []
    
    init(service: NetWorkService) {
        self.service = service
    }
    
    func load() async {
        do {
            let screenModel = try await service.load(url: Constants.ScreenResources.petListing)
            components = try screenModel.buildComponets()
        } catch {
            print(error)
        }
        
    }
}

