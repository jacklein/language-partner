//
//  Languages.swift
//  LanguagePartner
//
//  Created by Jack Klein on 3/14/16.
//  Copyright © 2016 Jack Klein. All rights reserved.
//

import Foundation
import MapKit

// list of possible languages to pick from, used in the LanguageSelection view
let Languages = ["Arabic", "Chinese", "French", "Hindi", "Russian", "Spanish"]

// holds all the people that apply to the user's given language
// changes as the user's language changes
var languageArray: [Person] = []

// creating the pseudo databases of language partners

let Arabic = [
    Person(firstName: "Ali",
        lastName: "Basara",
        language: "Arabic",
        hometown: "Cairo, Egypt",
        school: "UIC",
        biography: "Ali Basara's biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.940061, longitude: -87.649066)),
    
    Person(firstName: "Aisha",
        lastName: "Naser",
        language: "Arabic",
        hometown: "Baghdad, Iraq",
        school: "DePaul University",
        biography: "Aisha Naser's biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.936132, longitude: -87.663523)),
    
    Person(firstName: "Alma",
        lastName: "Baz",
        language: "Arabic",
        hometown: "Casablanca, Morocco",
        school: "Columbia University",
        biography: "Alma Baz' biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.941614, longitude: -87.663750)),
    
    Person(firstName: "Hassan",
        lastName: "Essa",
        language: "Arabic",
        hometown: "Mosul, Iraq",
        school: "DePaul University",
        biography: "Hassan Essa's biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.945363, longitude: -87.654112))
]

let Chinese = [
    Person(firstName: "Xibo",
        lastName: "Wang",
        language: "Chinese",
        hometown: "Shanghai, China",
        school: "DePaul University",
        biography: "Hey everyone, I am Xibo and I'm from Shanghai, China. I've lived in the U.S. for only 3 months and I'm looking to meet new Chicagoans and learn more about American culture! Hope this message finds you all well, 谢谢!",
        coordinate: CLLocationCoordinate2D(latitude: 41.940061, longitude: -87.649066)),
    
    Person(firstName: "Zhou",
        lastName: "Xin",
        language: "Chinese",
        hometown: "Beijing, China",
        school: "Columbia University",
        biography: "Zhou Xin's biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.936132, longitude: -87.663523)),
    
    Person(firstName: "Da",
        lastName: "Dong",
        language: "Chinese",
        hometown: "Macau, China",
        school: "Loyola University",
        biography: "Da Dong's biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.941614, longitude: -87.663750)),
    
    Person(firstName: "Jin",
        lastName: "Li",
        language: "Chinese",
        hometown: "Taipei, Taiwan",
        school: "DePaul University",
        biography: "Jin Li's biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.945363, longitude: -87.654112))
]

let French = [
    Person(firstName: "Hugo",
        lastName: "Derand",
        language: "French",
        hometown: "Lyon, France",
        school: "UIC",
        biography: "Hugo Derand's biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.940061, longitude: -87.649066)),
    
    Person(firstName: "Camille",
        lastName: "Dubois",
        language: "French",
        hometown: "Paris, France",
        school: "DePaul University",
        biography: "Camille Dubois' biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.936132, longitude: -87.663523)),
    
    Person(firstName: "Lola",
        lastName: "Simon",
        language: "French",
        hometown: "Marseille, France",
        school: "Columbia University",
        biography: "Lola Simon's biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.941614, longitude: -87.663750)),
    
    Person(firstName: "Quentin",
        lastName: "Roux",
        language: "French",
        hometown: "Paris, France",
        school: "DePaul University",
        biography: "Quentin Roux' biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.945363, longitude: -87.654112))
]

let Hindi = [
    Person(firstName: "Anirudh",
        lastName: "Bomadevar",
        language: "Hindi",
        hometown: "Hyderabad, India",
        school: "UIC",
        biography: "Anirudh Bomadevar's biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.940061, longitude: -87.649066)),
    
    Person(firstName: "Prasanthi",
        lastName: "Kopparapu",
        language: "Hindi",
        hometown: "Mumbai, India",
        school: "Columbia University",
        biography: "Prasanthi Kopparapu's biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.936132, longitude: -87.663523)),
    
    Person(firstName: "Jeyenth",
        lastName: "Bukkapatnam",
        language: "Hindi",
        hometown: "Delhi, India",
        school: "DePaul University",
        biography: "Jeyenth Bukkapatnam's biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.941614, longitude: -87.663750)),
    
    Person(firstName: "Aditya",
        lastName: "Amrit",
        language: "Hindi",
        hometown: "Mumbai, India",
        school: "DePaul University",
        biography: "Aditya Amrit's biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.945363, longitude: -87.654112))
]

let Russian = [
    Person(firstName: "Abram",
        lastName: "Bodgan",
        language: "Russian",
        hometown: "Moscow, Russia",
        school: "UIC",
        biography: "Abram Bogdan's biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.940061, longitude: -87.649066)),
    
    Person(firstName: "Vladimir",
        lastName: "Ivanov",
        language: "Russian",
        hometown: "Saint Petersburg, Russia",
        school: "DePaul University",
        biography: "Vladimir Ivanov's biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.936132, longitude: -87.663523)),
    
    Person(firstName: "Ana",
        lastName: "Chernova",
        language: "Russian",
        hometown: "Omsk, Russia",
        school: "Columbia University",
        biography: "Ana Chernova's biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.941614, longitude: -87.663750)),
    
    Person(firstName: "Elena",
        lastName: "Petrov",
        language: "Russian",
        hometown: "Moscow, Russia",
        school: "DePaul University",
        biography: "Elena Petrov's biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.945363, longitude: -87.654112))
]

let Spanish = [
    Person(firstName: "Rafa",
        lastName: "Muniz",
        language: "Spanish",
        hometown: "Madrid, Spain",
        school: "UIC",
        biography: "Rafa Muniz's biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.940061, longitude: -87.649066)),
    
    Person(firstName: "Karen",
        lastName: "Guadarrama",
        language: "Spanish",
        hometown: "Mexico City, Mexico",
        school: "DePaul University",
        biography: "Karen Guadarrama's biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.936132, longitude: -87.663523)),
    
    Person(firstName: "Teresa",
        lastName: "Lanza",
        language: "Spanish",
        hometown: "Barcelona, Spain",
        school: "Columbia University",
        biography: "Teresa Lanza's biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.941614, longitude: -87.663750)),
    
    Person(firstName: "Andrea",
        lastName: "Kinnerk",
        language: "Spanish",
        hometown: "Lima, Peru",
        school: "DePaul University",
        biography: "Andrea Kinnerk's biography",
        coordinate: CLLocationCoordinate2D(latitude: 41.945363, longitude: -87.654112))
]
