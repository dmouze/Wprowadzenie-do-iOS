//
//  ViewController.swift
//  MapKitUserLocation
//
//  Created by Matt on 23/11/2023.
//


import UIKit
import MapKit 
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        
        super.viewDidLoad() 
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            
            locationManager.delegate = self
            
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters 
            locationManager.startUpdatingLocation()
        }
    }
	
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    
        guard let location: CLLocation = manager.location else { return }
   
        fetchCityAndCountry(from: location) { city, country, error in
            
            guard let city = city, let country = country, error == nil else { return }
            
            print(city + ", " + country)
            
        }
    
    }
    
    func fetchCityAndCountry(from location: CLLocation, completion: @escaping (_ city: String?, _ country: String?, _ error: Error?) -> ()) { 
        CLGeocoder().reverseGeocodeLocation(location) {
            placemarks, error in completion(placemarks?.first?.locality,
                                            placemarks?.first?.country,
                                            error)
        }
    }
}
