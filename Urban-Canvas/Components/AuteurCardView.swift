//
//  AuteurCardView.swift
//  Urban-Canvas
//
//  Created by apprenant102 on 07/07/2026.
//

import SwiftUI
import WebKit

struct AuteurCardView: View {
    var artist: Auteur
    @Binding var showWebView: Bool
    @Binding var selectedWeb: URL 
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 175, height: 235)
                .foregroundStyle(.white)
            VStack {
                AsyncImage(url: artist.image) { image in
                    image.resizable()
                }
                placeholder: {
                    Image(systemName: "photo")
                }
                .scaledToFill()
                .frame(width: 65, height: 65)
                .clipped()
                .clipShape(.circle)
                //Name
                Text(artist.name)
                    .font(.system(size: 21))
                    .font(.callout)
                    .foregroundStyle(.mainOrange)
                    .fontWeight(.semibold)
                VStack {
                    //Type
                    Text("\(Text("Age : ").fontWeight(.bold))\(Text(String(artist.age)))")
                        .font(.caption2)
                    //Type
                    Text("\(Text("Origines : ").fontWeight(.bold))\(Text(artist.origin))")
                        .font(.caption2)
                    //Type
                    Text("\(Text("Style : ").fontWeight(.bold))\(Text(artist.type))")
                        .font(.caption2)
                }
                .padding(.top, 5)
                .padding(.bottom, 10)
                Button {
                    selectedWeb = artist.web
                    showWebView.toggle()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                            .frame(width: 140, height: 30)
                            .foregroundStyle(.secondaryOrange)
                            .padding(5)
                        Text("Site Web")
                            .font(.caption2)
                            .foregroundStyle(.white)
                    }
                }
            }
        }
    }
}

#Preview {
//    AuteurCardView(artist: listAuteurs[0], showWebView: .constant(false))
}
