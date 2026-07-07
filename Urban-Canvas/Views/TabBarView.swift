//
//  TabBarView.swift
//  Urban-Canvas
//
//  Created by apprenant102 on 07/07/2026.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem
            {
                Label("Oeuvres", systemImage: "photo.artframe.circle")
                    .environment(\.symbolVariants, .none)
            }
            AuteursCardsView()
                .tabItem
            {
                Label("Auteurs", systemImage: "person.crop.circle")
                    .environment(\.symbolVariants, .none)
            }
            MissionView()
                .tabItem
            {
                Label("Mission", systemImage: "square.3.stack.3d.bottom.filled")
                    .environment(\.symbolVariants, .none)
            }
        }
        .accentColor(.mainOrange)
        
        
    }
}

#Preview {
    TabBarView()
}
