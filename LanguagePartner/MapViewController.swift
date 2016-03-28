//
//  MapViewController.swift
//  LanguagePartner
//
//  Created by Jack Klein on 3/14/16.
//  Copyright © 2016 Jack Klein. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    // handles the map view
    @IBOutlet weak var mapView: MKMapView!

    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation){
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 3.0, regionRadius * 3.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let initialLocation = CLLocation(latitude: 41.9396145, longitude: -87.6584953)
        
        // set center of map
        centerMapOnLocation(initialLocation)
        
        mapView.delegate = self
    }
    
    override func viewWillAppear(animated: Bool) {
        // if user has possible language partners, display them on map
        if(languageArray.count > 0){
            for i in 0 ... languageArray.count-1{
                let u = languageArray[i]
                let artwork = Artwork(title: u.firstName! + " " + u.lastName!, school: u.school!, coordinate: u.coordinate)
                mapView.addAnnotation(artwork)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}