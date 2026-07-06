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
    
    enum segments: String, CaseIterable, Identifiable {
        case list, map
        var id: Self { self }
    }
    @State private var selectedSegment: segments = .list
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack{
                if selectedSegment == .list {
                    ArtListView(artlist: $artlist, selectedType: $selectedType, isFilterButtonShowing: $isFilterButtonShowing)
                } else {
                    MapView(artlist: $artlist, selectedType: $selectedType,isFilterButtonShowing: $isFilterButtonShowing)
                }
            }
            .padding(.top)
            .ignoresSafeArea()
            HStack {
                if isFilterButtonShowing {
                    Picker("segment", selection: $selectedSegment) {
                        Text("Liste").tag(HomeView.segments.list)
                        Text("Carte").tag(HomeView.segments.map)
                    }
                    .pickerStyle(.segmented)
                    
                    Spacer()
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
