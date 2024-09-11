//
//  LocationManager.swift
//  chinchorro
//
//  Created by Marco Carmona on 9/10/24.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    let manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    
    override init() {
        super.init()
        manager.delegate = self
    }
    
    func checkLocationAuthorization() -> Bool {
        manager.startUpdatingLocation()
        
        switch manager.authorizationStatus {
        case .notDetermined:
            manager.requestWhenInUseAuthorization()
        case .restricted:
            print("Location services are restricted")
        case .denied:
            print("Location services were denied")
        case .authorizedAlways, .authorizedWhenInUse:
            location = manager.location?.coordinate
            return true
        default:
            print("Location service is disabled")
        }
        
        return false
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
    
    func locationManager(
        _ manager: CLLocationManager,
        didUpdateLocations locations: [CLLocation]
    ) {

        location = locations.first?.coordinate

    }
    
}
