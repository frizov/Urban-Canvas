//
//  MapView.swift
//  Urban-Canvas
//
//  Created by apprenant102 on 06/07/2026.
//

import SwiftUI
import MapKit

struct MapView: View {
    @Binding var artlist: [Artwork]
    @Binding var selectedType: String
    @Binding var isFilterButtonShowing: Bool
    @Binding var selectedCard: Artwork
    @Binding var isPresented: Bool
    @Binding var showDetailFromCard: Bool
    @Binding var selectedSegment: Bool
    var body: some View {
        NavigationStack {
                Map(position: .constant(.automatic)) {
                    ForEach(artlist) { element in
                        if selectedType == "Tous" {
                            Annotation(element.name, coordinate: element.coordinate, anchor: .center) {
                                Button {
                                    selectedCard = element
                                    isPresented.toggle()
                                    
                                } label : {
                                    ArtMapMarkerView()
                                }
                            }
                            
                        } else if element.type == selectedType {
                            Annotation(element.name, coordinate: element.coordinate, anchor: .center) {
                                Button {
                                    selectedCard = element
                                    isPresented.toggle()
                                    
                                } label : {
                                    ArtMapMarkerView()
                                }
                            }
                        }
                    }
                }
                .sheet(isPresented: $isPresented, onDismiss: didDismiss) {
                    ArtMapCardView(element: selectedCard, isFilterButtonShowing: $isFilterButtonShowing, isPresented: $isPresented, selectedCard: $selectedCard, showDetailFromCard: $showDetailFromCard, selectedSegment: $selectedSegment)
                        .presentationDetents([.fraction(0.5)])
                }
            }
        }
    }

#Preview {
//    MapView()
}

func didDismiss() {
        // Handle the dismissing action.
    }
