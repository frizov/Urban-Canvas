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
    @State var selectedCard: Artwork = listArtworks[0]
    @State var isPresented: Bool = false
    @State var showDetailFromCard: Bool = false
    @State var selectedSegment: Bool = true
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack{
                if selectedSegment {
                    ArtListView(artlist: $artlist, selectedType: $selectedType, isFilterButtonShowing: $isFilterButtonShowing,selectedCard: $selectedCard, showDetailFromCard: $showDetailFromCard)
                } else if !selectedSegment{
                    MapView(artlist: $artlist, selectedType: $selectedType,isFilterButtonShowing: $isFilterButtonShowing, selectedCard: $selectedCard, isPresented: $isPresented,showDetailFromCard: $showDetailFromCard, selectedSegment: $selectedSegment)
                }
            }
            .padding(.top)
            .ignoresSafeArea()
            HStack {
                if isFilterButtonShowing {
                    Picker("segment", selection: $selectedSegment) {
                        Text("Liste").tag(true)
                        Text("Carte").tag(false)
                    }
                    .pickerStyle(.segmented)
                    .colorMultiply(.secondaryOrange)
                    .background(.thickMaterial)
                    .frame(width: 280)
                    .clipShape(.capsule)
                    Spacer()
                    FilterButtonView(isFilterOpen: $isFilterOpen, selectedType: $selectedType)
                }
            }
            .padding(.horizontal)
        }
        .fullScreenCover(isPresented: $showDetailFromCard) {
            NavigationStack {
                ArtDetailView(element: selectedCard, isFilterButtonShowing: $isFilterButtonShowing)
                    .overlay(alignment: .topLeading) {
                        Button {
                            showDetailFromCard.toggle()
                        } label: {
                            Image(systemName: "chevron.backward")
                                .font(.title2)
                                .padding(13)
                                .background(.white)
                                .foregroundStyle(.black.opacity(1.0))
                                .clipShape(.circle)
                                .padding(.horizontal)
                                .shadow(radius: 10, y:5)
                        }
                        .offset(x:5,y:-50)
                    }
            }
        } // finish of fullsheet
    }
}


#Preview {
    HomeView()
}

// NOTES
//if showDetailFromCard {
//    ArtDetailView(element: selectedCard, isFilterButtonShowing: $isFilterButtonShowing)
//}

