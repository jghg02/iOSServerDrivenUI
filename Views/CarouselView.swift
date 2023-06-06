//
//  CarouselView.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 06-06-23.
//

import SwiftUI

struct CarouselView: View {
    
    let uiModel: Carousel
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(uiModel.items) { item in
                    Navigator.perform(action: uiModel.action, payload: item) {
                        AsyncImage(url: item.imageUrl) { image in
                            image
                                .resizable()
                                .frame(width: 200, height: 200)
                        } placeholder: {
                            ProgressView()
                        }
                    }
                }
            }
        }
    }
}


