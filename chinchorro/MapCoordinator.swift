//
//  MapCoordinator.swift
//  chinchorro
//
//  Created by Marco Carmona on 9/10/24.
//

import GoogleMaps

class MapCoordinator: NSObject, GMSMapViewDelegate {
    
    var parent: MapView
    
    init(parent: MapView) {
        self.parent = parent
    }
    
    func mapView(_ mapView: GMSMapView, idleAt position: GMSCameraPosition) {
        parent.currentCoordinate = position.target
    }
    
}
