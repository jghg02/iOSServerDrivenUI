//
//  FeaturedImageComponent.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 30-05-23.
//

import Foundation
import SwiftUI

struct FeaturedImageComponent: UIComponent {
    var uniqueId: String {
        return ComponentType.featuredImage.rawValue
    }
    
    let uiMolde: FeaturedImageUI
    
    func render() -> AnyView {
        AsyncImage(url: uiMolde.imageUrl) { image in
            image.resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            ProgressView()
        }.toAnyView()
    }
}
