//
//  AuteursCardsView.swift
//  Urban-Canvas
//
//  Created by apprenant102 on 07/07/2026.
//

import SwiftUI

struct AuteursCardsView: View {
    @State var artists: [Auteur] = listAuteurs
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.15)
                .ignoresSafeArea()
            ScrollView {
                //            Color.gray
                LazyVGrid(
                    columns: [
                        GridItem(),
                        GridItem()
                    ],
                    alignment: .center,
                    spacing: 15,
                ) {
                    ForEach(artists) { artist in
                        AuteurCardView(artist: artist)
                        //                      .buttonStyle(.plain)
                    }
                }
            }
            .padding(.horizontal, 10)
        }
        
    }
}

#Preview {
    AuteursCardsView()
}
