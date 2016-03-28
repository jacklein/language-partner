//
//  Partner.swift
//  LanguagePartner
//
//  Created by Jack Klein on 3/9/16.
//  Copyright © 2016 Jack Klein. All rights reserved.
//

import Foundation
import MapKit

// the person using the app, will change as user edits profile
var user = Person()

// Person object, used for language partners and user
class Person{
    
    var firstName: String?
    var lastName: String?
    var language: String?
    var hometown: String?
    var school: String?
    var biography: String?
    let coordinate: CLLocationCoordinate2D
    
    init(firstName: String, lastName: String, language: String, hometown: String, school: String, biography: String, coordinate: CLLocationCoordinate2D){
        self.firstName = firstName
        self.lastName = lastName
        self.language = language
        self.hometown = hometown
        self.school = school
        self.biography = biography
        self.coordinate = coordinate
    }
    
    // have to init coordinate, just making it (0,0)
    init(){
        self.coordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
    }
    
    
}