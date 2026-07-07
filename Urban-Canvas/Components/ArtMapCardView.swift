//
//  ArtMapCardView.swift
//  Urban-Canvas
//
//  Created by apprenant102 on 01/07/2026.
//

import SwiftUI
import MapKit

struct ArtMapCardView: View {
    var element: Artwork
    @Binding var isFilterButtonShowing: Bool
    @Binding var isPresented: Bool
    @Binding var selectedCard: Artwork
    @Binding var showDetailFromCard: Bool
    @Binding var selectedSegment: Bool
    
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                // Close Card
                Button {
                    isPresented.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .font(.title3)
                        .padding(10)
                        .background(.gray.opacity(0.3))
                        .foregroundStyle(.black.opacity(0.75))
                        .clipShape(.circle)
                }
                Spacer()
                //Title
                Text(element.name)
                    .font(.title3)
                Spacer()
                // ArtDetailView
                Button {
                    isPresented.toggle()
//                    selectedSegment.toggle()
                    showDetailFromCard.toggle()
                } label: {
                    Image(systemName: "arrow.right")
                        .font(.title3)
                        .padding(10)
                        .background(.orange)
                        .foregroundStyle(.white)
                        .clipShape(.circle)
                }
            }
            .padding()
            AsyncImage(url: element.image) { image in
                image.resizable()
            }
            placeholder: {
                Image(systemName: "photo")
            }
            .scaledToFill()
            .frame(maxWidth: .infinity, maxHeight: 180)
            .clipped()
//            .onAppear { isFilterButtonShowing.toggle() }
//            .onDisappear { isFilterButtonShowing.toggle() }
            .allowsHitTesting(false)
            //Description
            Text(element.description)
                .padding(.bottom, 5)
                .font(.default)
                .padding(.horizontal, 18)
                .padding(.top)
        }
        .ignoresSafeArea()
    }
}
#Preview {
    //    ArtListView()
}
