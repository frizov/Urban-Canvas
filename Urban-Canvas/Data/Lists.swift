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
    Artwork(
        image: URL(string: "https://streetartcities.com/media/c/c073b05b-4dac-4c16-8b15-1b58b889adc1/orig.jpg")!,
        name: "The Shadow",
        type: "Stencil",
        description: "Ce pochoir urbain percutant fait surgir The Shadow, héros masqué des comics, de l'obscurité d'un mur de briques. Cape au vent et chapeau noir abaissé, son regard perçant défie la rue, incarnant le justicier de l'ombre avec intensité.",
        condition: "Bonne",
        date: ("Juillet", 2026),
        auteur: "Neftnik",
        city: "Hamburg",
        adresse: "Ölmühle 2, 20357",
        coordinate: CLLocationCoordinate2D(latitude: 53.79512795218988, longitude: 10.003370500464577)
    ),
    Artwork(
        image: URL(string: "https://streetartcities.com/media/4/4f4c1145-26b5-4f41-a223-488355676691/orig.jpg")!,
        name: "Portrait",
        type: "Stencil",
        description: "Ce pochoir minimaliste saisit le regard intense d'une jeune fille fixant le spectateur. Silhouette épurée aux lignes graphiques, elle porte un bonnet en forme de requin. Une œuvre urbaine percutante, mêlant innocence enfantine et force graphique sur le béton brut.",
        condition: "Bonne",
        date: ("Octobre", 2021),
        auteur: "NJO972",
        city: "Paris",
        adresse: "1 bis Cité Griset, 75011",
        coordinate: CLLocationCoordinate2D(latitude: 49.1848762, longitude: 2.3950572)
    ),
    Artwork(
        image: URL(string: "https://streetartcities.com/media/c/c54abd3c-d426-46cf-bd23-36295828c303/orig.jpg")!,
        name: "Jeanne",
        type: "Mosaïque",
        description: "Cette mosaïque street art claque sur le bitume : une Jeanne d’Arc version guerrière urbaine. Armure de chevalier stylisée en tesselles pimpées, elle impose son style avec une crinière rousse flamboyante qui vandalise le mur de couleur. Un hommage brut et ultra-visuel qui donne un sacré coup de jeune au mythe.",
        condition: "Bonne",
        date: ("Janvier", 2021),
        auteur: "Sido Mosaique",
        city: "Orléans",
        adresse: "5 Pl. du Châtelet, 45000",
        coordinate: CLLocationCoordinate2D(latitude: 48.063213, longitude: 1.883056)
    ),
    Artwork(
        image: URL(string: "https://streetartcities.com/media/5/599231c8-8f58-4294-a7e1-ad1a7ace01c7/orig.jpg")!,
        name: "Blackdoors 76",
        type: "Mosaïque",
        description: "Né en 1992, l'artiste parisien BLACKDOORS réinvente la mosaïque urbaine en collant ses carreaux de céramique sur les murs oubliés. Ses œuvres, véritables portes noires en trompe-l'œil, transforment les façades en passages secrets vers l’imaginaire. Un street art texturé et accessible qui bouscule le quotidien des passants.",
        condition: "Bonne",
        date: ("Mars", 2022),
        auteur: "Blackdoors",
        city: "Paris",
        adresse: "7 Pass. des Ménétriers, 75003",
        coordinate: CLLocationCoordinate2D(latitude: 49.13507211, longitude: 2.42584134)
    ),
    Artwork(
        image: URL(string: "https://streetartcities.com/media/b/bff40343-4eda-429a-be78-3d608e9e0a10/orig.jpg")!,
        name: "Unfair Autotelism",
        type: "Calligraphie",
        description: "Ce calligraffiti vibrant fait danser les lettres sur le béton. Alliant l'élégance de la calligraphie à l'énergie du graffiti, les courbes fluides aux dégradés de rouge et d'orange pulsent de vie, tandis que des fleurs stylisées éclosent au sol. Une œuvre ludique et lumineuse.",
        condition: "Bonne",
        date: ("Juin", 2023),
        auteur: "Mista Ndek",
        city: "Paris",
        adresse: "2 Pass. de l'Asile, 75011",
        coordinate: CLLocationCoordinate2D(latitude: 49.16634064, longitude: 2.39275004)
    ),
    Artwork(
        image: URL(string: "https://streetartcities.com/media/5/5c852a06-9d82-4ac9-a485-8345fb388dc1/orig.jpeg")!,
        name: "Spring Always Comes Back",
        type: "Calligraphie",
        description: "Ce monumental calligraffiti d'eL Seed enveloppe la façade d'un immeuble britannique de ses rubans calligraphiques entrelacés. Ses courbes fluides et tridimensionnelles, aux couleurs vibrantes, transcendent la barrière de la langue. Une fusion magistrale de poésie arabe et d’énergie urbaine qui transforme l’architecture en un message de paix universel.",
        condition: "Bonne",
        date: ("Mars", 2024),
        auteur: "el Seed",
        city: "London",
        adresse: "19 Millard Rd, London SE8 3GA",
        coordinate: CLLocationCoordinate2D(latitude: 51.73820097, longitude: -0.01246561)
    ),
    Artwork(
        image: URL(string: "https://streetart.media/7/72335537-2590-4d79-9b01-3efdc258d53f/orig.jpg")!,
        name: "Be Lucky",
        type: "Calligraphie",
        description: "Ce chef-d'œuvre street art d'Inkie fusionne l'Art Nouveau et le graffiti de Bristol. Une muse élégante au regard serein est entourée de lettrages dorés affichant « Be Lucky ». Ses cheveux se transforment en volutes graphiques ultra-précises, apportant une esthétique décorative raffinée et un talisman de chance au cœur de la rue.",
        condition: "Bonne",
        date: ("Juin", 2023),
        auteur: "Inkie",
        city: "London",
        adresse: "93 Shakespeare Rd, Cheltenham GL51 7HR",
        coordinate: CLLocationCoordinate2D(latitude: 52.03198670, longitude: -2.08930506)
    ),
    
]

var listAuteurs: [Auteur] =
[
    Auteur(
        image: URL(string: "https://streetart.media/7/72335537-2590-4d79-9b01-3efdc258d53f/orig.jpg")!,
        name: "Test Artist",
        age: 30,
        origin: "The Moon",
        type: "Stencil",
        web: URL(string:"https://streetartcities.com/markers/6b7b724c-312c-4978-afd4-a34dfd496420")!
    ),
    
]


