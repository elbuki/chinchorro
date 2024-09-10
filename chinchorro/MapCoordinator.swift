//
//  MapCoordinator.swift
//  chinchorro
//
//  Created by Marco Carmona on 9/10/24.
//

import GoogleMaps

class MapCoordinator: NSObject, GMSMapViewDelegate {
    
    func mapView(_ mapView: GMSMapView, willMove gesture: Bool) {
        print(mapView)
    }
    
    func mapView(_ mapView: GMSMapView, didChange position: GMSCameraPosition) {
        print(position.target)
    }
    
}
