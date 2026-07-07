//
//  ArtDetailView.swift
//  Urban-Canvas
//
//  Created by apprenant102 on 01/07/2026.
//

import SwiftUI
import MapKit

struct ArtDetailView: View {
    var element: Artwork
    @Binding var isFilterButtonShowing: Bool
    
    
    var body: some View {
        VStack {
            AsyncImage(url: element.image) { image in
                image.resizable()
            }
            placeholder: {
                Image(systemName: "photo")
            }
            .scaledToFill()
            .frame(maxWidth: .infinity, maxHeight: 280)
            .clipped()
            .onAppear { isFilterButtonShowing.toggle() }
            .onDisappear { isFilterButtonShowing.toggle() }
            ScrollView { // Scrollview is here because it is a better design to keep the image on top while scrolling.
                VStack(alignment: .leading) {
                    //Title
                    Text(element.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.mainOrange)
                        .padding(.bottom, 5)
                    //Description
                    Text(element.description)
                        .padding(.bottom, 5)
                        .font(.default)
                    //Type
                    Text("\(Text("Type : ").fontWeight(.bold))\(Text(element.type))")
                    //Condition
                    Text("\(Text("Condition : ").fontWeight(.bold))\(Text(element.condition))")
                    //Date
                    Text("\(Text("Date : ").fontWeight(.bold))\(Text(element.date.month + " " + String(element.date.year)))")
                    //Auteur
                    Text("\(Text("Auteur : ").fontWeight(.bold))\(Text(element.auteur))")
                    //Localisation
                    Text("\(Text("Localisation : ").fontWeight(.bold))\(Text("\(element.adresse), "+"\(element.city) "))\(Text("(Latitude : \(Double(element.coordinate.latitude), specifier: "%.4f") ,"))\(Text(" Longitude : \(Double(element.coordinate.longitude), specifier: "%.4f"))"))")
                    Spacer()
                    Map(position: .constant(.region(MKCoordinateRegion(center: element.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)))))
                    {
                        Annotation(element.name, coordinate: element.coordinate, anchor: .center) {
                            ArtMapElementView(element: element)
                        }
                        
                    }
                    .frame(width: .infinity, height: 160)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    Spacer()
                }
                .padding(18)
                
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
    
}
#Preview {
//    ArtListView()
}
