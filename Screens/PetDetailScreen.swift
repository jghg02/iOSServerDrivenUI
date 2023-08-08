//
//  PetDetailScreen.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 08-08-23.
//

import SwiftUI

struct PetDetailScreen: View {

    let petId: Int
    @StateObject private var vm: PetDetailViewModel


    init(petId: Int) {
        _vm = StateObject(wrappedValue: PetDetailViewModel(service: WebServices()))
        self.petId = petId
    }

    var body: some View {
            ScrollView {
                ForEach(vm.components, id: \.id) { componet in
                    componet.render()
                }
                .navigationTitle("Pets")
            }.task {
                await vm.load(petId: petId)
            }
    }
}

struct PetDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        PetDetailScreen(petId: 1)
    }
}
