//
//  UIComponent.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 26-05-23.
//

import Foundation
import SwiftUI

protocol UIComponent {
    var uniqueId: String { get }
    func render() -> AnyView
}


