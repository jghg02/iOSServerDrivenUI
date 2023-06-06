//
//  ContentView.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 25-05-23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = PetListViewModel(service: LocalService())
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(vm.components, id: \.id) { componet in
                    componet.render()
                }
                .navigationTitle("Pets")
            }.task {
                await vm.load()
            }
        }
    }
    
    /*
    func getData() async {
        let webservice = WebServices()
        try? await webservice.load(url: Constants.baseURL + Constants.petList)
    }
     */
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
