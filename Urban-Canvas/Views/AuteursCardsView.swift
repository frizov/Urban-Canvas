//
//  AuteursCardsView.swift
//  Urban-Canvas
//
//  Created by apprenant102 on 07/07/2026.
//

import SwiftUI
import WebKit

struct AuteursCardsView: View {
    @State var artists: [Auteur] = listAuteurs
    @State var showWebView: Bool = false
    @State var selectedWeb: URL = URL(string:"https://www.pablopicasso.org")!
    
    var body: some View {
        if showWebView {
            WebView(url: selectedWeb)
                .overlay(alignment: .topLeading) {
                    Button {
                        showWebView.toggle()
                    } label: {
                        Image(systemName: "chevron.backward")
                            .font(.title2)
                            .padding(13)
                            .background(.white)
                            .foregroundStyle(.black.opacity(1.0))
                            .clipShape(.circle)
                            .padding(.horizontal)
                            .shadow(radius: 10, y:5)
                    }
                    .offset(x:15,y:-50)
                }
        }
        else {
            ZStack {
                Color.gray.opacity(0.12)
                    .ignoresSafeArea()
                ScrollView {
//                    Text("\(showWebView)") ////TEST
                    LazyVGrid(
                        columns: [
                            GridItem(),
                            GridItem()
                        ],
                        alignment: .center,
                        spacing: 15,
                    ) {
                        ForEach(artists) { artist in
                            AuteurCardView(artist: artist, showWebView: $showWebView, selectedWeb: $selectedWeb)
                            //                      .buttonStyle(.plain)
                        }
                    }
                }
                .padding(.horizontal, 10)
            }
            
        }
    }
}

#Preview {
    AuteursCardsView()
}
