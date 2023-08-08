//
//  RatingView.swift
//  Pets
//
//  Created by Josue German Hernandez Gonzalez on 08-08-23.
//

import SwiftUI

struct RatingView: View {

    @Binding var rating: Int?

    private func startType(index: Int) -> String {
        if let rating = self.rating {
            return index <= rating ? "star.fill" : "star"
        } else {
            return "star"
        }


    }

    var body: some View {
        HStack {
            ForEach(1...5, id: \.self) { index in
                Image(systemName: self.startType(index: index))
                    .foregroundColor(Color.orange)
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(3))
    }
}
