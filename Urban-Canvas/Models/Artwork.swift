//
//  Artwork.swift
//  Urban-Canvas
//
//  Created by apprenant102 on 01/07/2026.
//

import Foundation
import SwiftUI
import MapKit

struct Artwork : Identifiable {
    let id = UUID()
    let image: URL
    let name: String
    let type: String
    let description: String
    let condition: String
    let date: (month: String, year: Int) // Date? type?
    let auteur: String
    let city: String
    let adresse: String
    let coordinate: CLLocationCoordinate2D
}
