//
//  Lists.swift
//  Urban-Canvas
//
//  Created by apprenant102 on 01/07/2026.
//

import Foundation
import MapKit

var filterTypes: [String] = [
    "Tous", "Invaders", "Mosaïque", "Mural", "Stencil", "Calligraphie"
]

var listArtworks: [Artwork] =
[
    Artwork(
        image: URL(string: "https://streetartcities.com/media/d/d809dfdd-8f35-4f8a-a98b-a6e8da3857c0/orig.jpg")!,
        name: "PA_1185",
        type: "Invaders",
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
        type: "Invaders",
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
    Artwork(
        image: URL(string: "https://streetartcities.com/media/9/96fd9d0f-e7b4-4f77-a44c-40c68935bd1d/orig.jpg")!,
        name: "Nina Simone",
        type: "Mural",
        description: "Cette fresque monumentale réalisée à la bombe de peinture rend un hommage vibrant à Nina Simone, l'icône de la soul. Le portrait capture toute la puissance et l'émotion de son regard, magnifié par des éclats de couleurs vives et dynamiques qui symbolisent l'énergie brute de sa musique engagée.",
        condition: "Bonne",
        date: ("Septembre", 2025),
        auteur: "Seta Fuerte",
        city: "Paris",
        adresse: "13 Rue des Récollets, 75010",
        coordinate: CLLocationCoordinate2D(latitude: 49.1412939, longitude: 2.3991611)
    ),
    Artwork(
        image: URL(string: "https://streetartcities.com/media/9/9ef5c0a9-718d-4222-b25f-61e24d068aaa/orig.jpg")!,
        name: "Mes Anges",
        type: "Mural",
        description: "Cette fresque éclatante représente une maison d'où s'échappe un arbre majestueux traversant ses murs. Des oiseaux exotiques et colorés peuplent ses branches verdoyantes, tandis qu'un musicien, installé sur le côté gauche de l'œuvre, semble accompagner de ses notes ce jaillissement de nature poétique en plein cœur de la ville.",
        condition: "Bonne",
        date: ("Mars", 2026),
        auteur: "Louyz",
        city: "Paris",
        adresse: "16 Rue Bernard, 93260 Les Lilas",
        coordinate: CLLocationCoordinate2D(latitude: 49.204463, longitude: 2.451218)
    ),
    Artwork(
        image: URL(string: "https://streetartcities.com/media/5/5313599b-0d86-4ca5-9581-0f6a6656735f/orig.jpg")!,
        name: "Stork",
        type: "Mosaïques",
        description: "Mosaïque pixel art d'une cigogne : corps blanc, ailes noir, rouge, orange, bec jaune. Fond dégradé bleu-blanc, contour herbe verte. Charme rétro 8 bits sur grille de carreaux carrés.",
        condition: "Bonne",
        date: ("Fevrier", 2024),
        auteur: "Stork Pixelart",
        city: "Paris",
        adresse: "55 Rue Olivier Métra, 75020",
        coordinate: CLLocationCoordinate2D(latitude: 49.136829, longitude: 2.357529)
    ),
    Artwork(
        image: URL(string: "https://streetartcities.com/media/8/8bd64834-efbb-4e7c-9909-fc4b3f16f073/orig.jpg")!,
        name: "Adec balloons",
        type: "Mural",
        description: "Cette fresque murale spectaculaire représente un grand voilier en bois transportant de nombreux passagers, flottant magiquement dans les airs grâce à une multitude de petits ballons multicolores. L'œuvre apporte une touche de surréalisme poétique à la façade du bâtiment.",
        condition: "Bonne",
        date: ("Juillet", 2024),
        auteur: "Adec",
        city: "Montpellier",
        adresse: "8 Rue d'Alsace, 34000",
        coordinate: CLLocationCoordinate2D(latitude: 43.605939, longitude: 3.883443)
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
