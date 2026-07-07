//
//  ArtMapMarkerView.swift
//  Urban-Canvas
//
//  Created by apprenant102 on 03/07/2026.
//

import SwiftUI

struct ArtMapMarkerView: View {
    
    var body: some View {
        ZStack(alignment: .center) {
            // For testing ->
//            Circle()
//                .frame(width: 130, height: 130)
//                .foregroundStyle(.red)
//            <-
                Circle()
                    .frame(width: 67, height: 67)
                    .foregroundStyle(.white)
                    .shadow(radius: 10, y: 20)
            Triangle()
                .rotation(Angle(degrees: 180))
                .fill(.white)
                .frame(width: 20, height: 20)
                .offset(x:0, y:27)
            Image(systemName: "mappin.circle.fill")
                    .font(.system(size: 58))
                    .scaledToFill()
                    .foregroundStyle(.mainOrange.gradient)
                }
        
            }
        }

#Preview {
    ArtMapMarkerView()
}
