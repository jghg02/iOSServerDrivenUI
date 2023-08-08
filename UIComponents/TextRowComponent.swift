//
//  TextRowComponent.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 08-08-23.
//

import Foundation
import SwiftUI

struct TextRowComponent: UIComponent {
    var id: UUID = UUID()
    let uiModel: TextRow

    func render() -> AnyView {
        Text(uiModel.text)
            .padding()
            .toAnyView()
    }

    
}
