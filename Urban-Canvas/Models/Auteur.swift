//
//  Auteur.swift
//  Urban-Canvas
//
//  Created by apprenant102 on 06/07/2026.
//

import Foundation

struct Auteur : Identifiable {
    let id = UUID()
    let image: URL
    let name: String
    let age: Int
    let origin: String
    let type: String
    let web: URL
}
