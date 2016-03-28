//
//  Artwork.swift
//  LanguagePartner
//
//  Created by Jack Klein on 3/14/16.
//  Copyright © 2016 Jack Klein. All rights reserved.
//

import Foundation
import MapKit

// Artwork objects (the language partners) are put on the map with correct annotations
class Artwork: NSObject, MKAnnotation {
    let title: String?
    let school: String?
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, school: String, coordinate: CLLocationCoordinate2D){
        self.title = title
        self.school = school
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String?{
        return school
    }
    
}

