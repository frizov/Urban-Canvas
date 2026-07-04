//
//  FilterButtonView.swift
//  Urban-Canvas
//
//  Created by apprenant102 on 03/07/2026.
//

import SwiftUI

struct FilterButtonView: View {
    @Binding var isFilterOpen: Bool
    @Binding var selectedType: String
    var body: some View {
            Button() {
                isFilterOpen.toggle()
            } label: {
                ZStack {
                    Image(systemName: "line.3.horizontal.decrease.circle")
                    Circle()
                        .frame(width: 50)
                        .foregroundStyle(.white)
                    Image(systemName: "line.3.horizontal.decrease.circle")
                }
                .shadow(radius: 10, y: 5)
                .accentColor(.mainText)
                .imageScale(.small)
                .font(.largeTitle)
            }
            .popover(isPresented: $isFilterOpen) {
                FilterMenuView(isFilterOpen: $isFilterOpen, selectedType: $selectedType)
//                    .frame(maxWidth: 300, maxHeight: 400)
                    .presentationCompactAdaptation(.popover)
            }
            
    }
}

#Preview {
    FilterButtonView(isFilterOpen: .constant(false), selectedType: .constant(""))
}
