//
//  ArtElementView.swift
//  Urban-Canvas
//
//  Created by apprenant102 on 01/07/2026.
//

import SwiftUI

struct ArtElementView: View {
    var element: Artwork
    
    var body: some View {
        HStack {
            AsyncImage(url: element.image) { image in
                image.resizable()
                } placeholder: {
                    Image(systemName: "photo")
                }
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipped()
                    .clipShape(.circle)
                    .padding(.trailing, 5)
            VStack(alignment: .leading) {
                Text(element.name)
                    .font(.title3)
                    .foregroundStyle(.mainText)
                HStack {
                    Image(systemName: "mappin.circle.fill")
                        .foregroundStyle(.secondText)
                    Text(element.city)
                        .font(.default)
                        .foregroundStyle(.secondText)
                }
            }
        }
    }
}

#Preview {
    ArtElementView(element: listArtworks[0])
}
