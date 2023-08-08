//
//  RaitingComponent.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 08-08-23.
//

import Foundation
import SwiftUI

struct RaitingComponent: UIComponent {
    var id: UUID = UUID()
    let uiModel: Raiting

    func render() -> AnyView {
        RatingView(rating: .constant(uiModel.rating))
            .padding()
            .toAnyView()
    }


}
