//
//  ArtListView.swift
//  Urban-Canvas
//
//  Created by apprenant102 on 01/07/2026.
//

import SwiftUI

struct ArtListView: View {
    var body: some View {
        NavigationStack {
            List(listArtworks) { element in
                NavigationLink {
                    ArtDetailView(element: element)
                } label: {
                    ArtElementView(element: element)
                }
                .alignmentGuide(.listRowSeparatorLeading) { dimensions in dimensions[.leading]
                }
            }
            .navigationTitle("Liste des Street Art")
        }
    }
}

#Preview {
    ArtListView()
}
