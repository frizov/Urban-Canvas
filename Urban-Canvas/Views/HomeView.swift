//
//  HomeView.swift
//  Urban-Canvas
//
//  Created by apprenant102 on 03/07/2026.
//

import SwiftUI

struct HomeView: View {
    @State var artlist = listArtworks
    @State var isFilterOpen: Bool = false
    @State var selectedType: String = "Tous"
    @State var isFilterButtonShowing: Bool = true
    var body: some View {
        ZStack(alignment: .top) {
            VStack{
                ArtListView(artlist: $artlist, selectedType: $selectedType, isFilterButtonShowing: $isFilterButtonShowing)
            }
            .padding(.top)
            .ignoresSafeArea()
            HStack {
                // Segmented Picker
                Spacer()
                if isFilterButtonShowing {
                    FilterButtonView(isFilterOpen: $isFilterOpen, selectedType: $selectedType)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    HomeView()
}
