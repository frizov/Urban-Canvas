//
//  ArtListView.swift
//  Urban-Canvas
//
//  Created by apprenant102 on 01/07/2026.
//

import SwiftUI

struct ArtListView: View {
    @Binding var artlist: [Artwork]
    @Binding var selectedType: String
    @Binding var isFilterButtonShowing: Bool
    @Binding var selectedCard: Artwork
    @Binding var showDetailFromCard: Bool
    
    var body: some View {
        NavigationStack {
                List(listArtworks) { element in
                    if selectedType == "Tous" {
                        NavigationLink {
                            ArtDetailView(element: element, isFilterButtonShowing: $isFilterButtonShowing)
                        } label: {
                            ArtElementView(element: element)
                        }
                        .alignmentGuide(.listRowSeparatorLeading) { dimensions in dimensions[.leading]
                        }
                    } else if element.type == selectedType {
                        NavigationLink {
                            ArtDetailView(element: element, isFilterButtonShowing: $isFilterButtonShowing)
                        } label: {
                            ArtElementView(element: element)
                        }
                        .alignmentGuide(.listRowSeparatorLeading) { dimensions in dimensions[.leading]
                        }
                    }
                }
                .navigationTitle("Liste des Street Arts")
            }
        }
    }


#Preview {
//    ArtListView(artlist: $artlist)
}
