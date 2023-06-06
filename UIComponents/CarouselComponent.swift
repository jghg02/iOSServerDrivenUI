//
//  CarouselComponent.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 06-06-23.
//

import Foundation
import SwiftUI

struct CarouselComponent: UIComponent {

    let id = UUID()
    let uiModel: Carousel
    
    func render() -> AnyView {
        CarouselView(uiModel: uiModel).toAnyView()
    }
}
