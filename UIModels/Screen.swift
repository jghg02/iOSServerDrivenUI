//
//  Screen.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 25-05-23.
//

import Foundation

struct Screen: Decodable {
    let pageTitle: String
    let components: [Component?]
}

extension Screen {
    func buildComponets() throws -> [UIComponent] {
        var components: [UIComponent] = []
        
        for component in self.components {
            switch component!.type {
            case .featuredImage:
                guard let uiModel: FeaturedImageUI = component?.data.decode() else {
                    throw NetWorkError.decodingError
                }
                components.append(FeaturedImageComponent(uiMolde: uiModel))
            case .carousel:
                guard let uiModel: Carousel = component?.data.decode() else {
                    throw NetWorkError.decodingError
                }
                components.append(CarouselComponent(uiModel: uiModel))
            }
        }
        
        return components
    }
}
