//
//  View+Extensions.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 30-05-23.
//

import Foundation
import SwiftUI

extension View {
    func toAnyView() -> AnyView {
        AnyView(self)
    }
}
