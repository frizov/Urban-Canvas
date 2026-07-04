//
//  FilterMenuView.swift
//  Urban-Canvas
//
//  Created by apprenant102 on 03/07/2026.
//

import SwiftUI

struct FilterMenuView: View {
    @Binding var isFilterOpen: Bool
    @Binding var selectedType: String
    var body: some View {
        VStack(alignment: .leading) {
            Text("Liste des filtres")
                .accentColor(.mainText)
                .font(.title2)
                .fontWeight(.bold)
            Text("Choisissez un type d'art")
                .font(.title3)
                .accentColor(.mainText)
        }
        .padding(.top)
        VStack(alignment: .center) {
            
            ForEach(filterTypes, id: \.self) { type in
                Button {
                    selectedType = type
                    isFilterOpen.toggle()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                            .background(.regularMaterial)
                            .frame(width: 280, height: 40)
                            .tint(.gray).opacity(0.2)
                        Text(type)
                            .font(.title3)
                    }
                }
                .accentColor(.mainText)
            }
        }
        .frame(width: 300, height: 340)
    }
}

#Preview {
    FilterMenuView(isFilterOpen: .constant(false), selectedType: .constant(""))
}
