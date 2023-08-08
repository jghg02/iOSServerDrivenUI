//
//  PetDetailViewModel.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 08-08-23.
//

import Foundation

@MainActor
class PetDetailViewModel: ObservableObject {
    private var service: NetWorkService
    @Published var components: [UIComponent] = []

    init(service: NetWorkService) {
        self.service = service
    }

    func load(petId: Int) async {
        do {
            let screenModel = try await service.load(url: Constants.ScreenResources.petDetail(petId: petId))
            components = try screenModel.buildComponets()
        } catch {
            print(error)
        }
    }
}
