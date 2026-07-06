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
    @State var isPresented: Bool = false
    @Binding var isFilterButtonShowing: Bool
    var body: some View {
        Map(position: .constant(.automatic)) {
            ForEach(artlist) { element in
                if selectedType == "Tous" {
                    Annotation(element.name, coordinate: element.coordinate, anchor: .center) {
                        
                        Button {
                            isPresented.toggle()
                        } label : {
                            ArtMapElementView(element: element)
                        }
                        .sheet(isPresented: $isPresented) {
                            ArtDetailView(element: element, isFilterButtonShowing: $isFilterButtonShowing)
                        }
                    }
                    
                } else if element.type == selectedType {
                    Annotation(element.name, coordinate: element.coordinate, anchor: .center) {
                        ArtMapElementView(element: element)
                    }
                }
            }
        }
    }
}

#Preview {
//    MapView()
}
