//
//  Lists.swift
//  Urban-Canvas
//
//  Created by apprenant102 on 01/07/2026.
//

import Foundation
import MapKit

var listArtworks: [Artwork] =
[
    Artwork(
        image: URL(string: "https://streetartcities.com/media/d/d809dfdd-8f35-4f8a-a98b-a6e8da3857c0/orig.jpg")!,
        name: "PA_1185",
        type: "Invader",
        description: "Cette œuvre, intitulée PA_1185, est une mosaïque en pixels créée par le célèbre artiste urbain Invader. Située au 61 Rue de Charonne dans le 11e arrondissement de Paris, elle s'intègre parfaitement dans le paysage urbain de la capitale, mêlant la culture rétro du jeu vidéo à l'art contemporain.",
        condition: "Bonne",
        date: ("Decembre", 2025),
        auteur: "Invader",
        city : "Paris",
        adresse:"61 Rue de Charonne, 75011" ,
        coordinate: CLLocationCoordinate2D(latitude: 48.8876 , longitude: 2.3849)
    ),
    Artwork(
        image: URL(string: "https://streetartcities.com/media/8/84a3586c-75fb-4e59-882a-05effd9252a7/orig.jpg")!,
        name: "Alice Aux Pays Des Merveilles",
        type: "Mural",
        description: "Réalisée par l'artiste Yellow, cette œuvre colorée s'inspire du célèbre univers fantastique d'Alice au pays des merveilles. Située sur la Place du Docteur Yersin dans le 13e arrondissement de Paris, elle apporte une touche d'imaginaire et de pop culture au paysage urbain environnant.",
        condition: "Bonne",
        date: ("Janvier", 2026),
        auteur: "Yellow",
        city: "Paris",
        adresse: "1 Pl. du Dr Yersin, 75013",
        coordinate: CLLocationCoordinate2D(latitude: 48.8198739, longitude: 2.3712037)
    ),
    Artwork(
        image: URL(string: "https://streetartcities.com/media/4/41dfdabb-6320-4e66-b7a9-e71a4cdd4b6c/orig.jpeg")!,
        name: "Jurassic Invader",
        type: "Invader",
        description: "Inspirée par l'univers préhistorique et la culture pop rétro, cette mosaïque en pixels emblématique de l'artiste Invader représente un petit dinosaure pixélisé, s'intégrant parfaitement au décor architectural de la ville.",
        condition: "Bonne",
        date: ("Mars", 2022),
        auteur: "Invader",
        city: "Ravenna",
        adresse: "Via IV Novembre, 41, 48100 Ravenna RA",
        coordinate: CLLocationCoordinate2D(latitude: 44.4178, longitude: 12.2014)
    ),
    Artwork(
        image: URL(string: "https://streetartcities.com/media/7/7005b52c-5e26-49a4-a3a1-b15e1de2d776/orig.jpg")!,
        name: "Bath",
        type: "Mural",
        description: "Cette fresque murale captivante adopte un style classique pour représenter deux femmes partageant un moment intime au bain. L'œuvre revisite l'esthétique de la peinture traditionnelle à travers une exécution contemporaine à grande échelle, apportant une atmosphère de sérénité et de grâce mythologique au décor urbain.",
        condition: "Bonne",
        date: ("Juillet", 2026),
        auteur: "Kan DMV",
        city: "Dax",
        adresse: "Rue Sainte-Ursule, 40100",
        coordinate: CLLocationCoordinate2D(latitude: 43.7112, longitude: -1.05149)
    ),
    
    
    
    
]


// V3
//init() {
//            UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.orange
//            UISegmentedControl.appearance().setTitleTextAttributes(
//                [.foregroundColor: UIColor.white],
//                for: .selected
//            )
//            UISegmentedControl.appearance().setTitleTextAttributes(
//                [.foregroundColor: UIColor.orange],
//                for: .normal
//            )
//        }
