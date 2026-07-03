//
//  ArtMapElementView.swift
//  Urban-Canvas
//
//  Created by apprenant102 on 03/07/2026.
//

import SwiftUI

struct ArtMapElementView: View {
    var element: Artwork
    
    var body: some View {
        ZStack(alignment: .center) {
           /* Testing red background 
            Circle()
                .frame(width: 130, height: 130)
                .foregroundStyle(.red)
            */
                Circle()
                    .frame(width: 67, height: 67)
                    .foregroundStyle(.white)
            Triangle()
                .rotation(Angle(degrees: 180))
                .fill(.white)
                .frame(width: 20, height: 20)
                .offset(x:0, y:27)
            AsyncImage(url: element.image) { image in
                image.resizable()
                } placeholder: {
                    Image(systemName: "photo")
                }
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipped()
                    .clipShape(.circle)
                }
            }
        }

#Preview {
    ArtMapElementView(element: listArtworks[7])
}
