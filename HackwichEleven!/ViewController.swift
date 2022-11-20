//
//  ViewController.swift
//  HackwichEleven!
//
//  Created by Kaylene Carnavos on 11/19/22.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    
    let regionRadius = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centerMapOnLocation(location: initialLocation)
        
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
        let restaurantTwo = Restaurant(title: "Thai Lao Restaurant", type: "Laotian", coordinate: CLLocationCoordinate2D(latitude: 21.338782160004943, longitude: -158.07784196761477))
        mapView.addAnnotation(restaurantTwo)
       
     
    }
    
    func centerMapOnLocation(location:CLLocation){
        
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(regionRadius), longitudinalMeters: CLLocationDistance(regionRadius))
        
        mapView.setRegion(coordinateRegion, animated: true)

}



    
    
}

