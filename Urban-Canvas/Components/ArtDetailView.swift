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
            
            VStack(alignment: .leading) {
                Text(element.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.mainOrange)
                    .padding(.bottom, 5)
                Text(element.description)
                    .padding(.bottom, 5)
                    .font(.default)
                HStack(spacing: 0) {
                    Text("Type : ")
                        .fontWeight(.bold)
                    Text(element.type)
                }
                HStack(spacing: 0) {
                    Text("Condition : ")
                        .fontWeight(.bold)
                    Text(element.condition)
                }
//         TO DO = REFACTOR LIKE THIS IF I HAVE TIME       Text("\(Text("nanana").fontWeight(.bold))\(Text(element.condition))")
                HStack(spacing: 0) {
                    Text("Date : ")
                        .fontWeight(.bold)
                    Text(element.date.month + " " + String(element.date.year))
                }
                HStack(spacing: 0) {
                    Text("Auteur : ")
                        .fontWeight(.bold)
                    Text(element.auteur)
                }
                HStack(spacing: 0) {
                    Text("Localisation : ")
                        .fontWeight(.bold)
                    + Text("\(element.adresse), "+"\(element.city) ")
                    + Text("(Latitude : \(Double(element.coordinate.latitude), specifier: "%.4f") ,")
                    + Text(" Longitude : \(Double(element.coordinate.longitude), specifier: "%.4f"))")
                }
                Spacer()
                Map() {
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
        .ignoresSafeArea()
    }
    
}
#Preview {
    ArtListView()
}
