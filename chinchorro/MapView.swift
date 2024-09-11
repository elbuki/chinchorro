//
//  MapView.swift
//  Chinchorro
//
//  Created by Marco Carmona on 8/27/24.
//

import SwiftUI
import GoogleMaps
import CoreLocation

struct MapView: UIViewRepresentable {
    
    @Binding var currentCoordinate: CLLocationCoordinate2D?
    @Binding var currentLocation: CLLocationCoordinate2D?

    private let defaultZoomLevel: Float = 15
    
    func makeUIView(context: Context) -> GMSMapView {
        let options = GMSMapViewOptions()
        var targetCoordinate = CLLocationCoordinate2D(latitude: 37.7576, longitude: -122.4194)
        var gmsMapView: GMSMapView
        
        if let location = currentLocation {
            targetCoordinate.latitude = location.latitude
            targetCoordinate.longitude = location.longitude
        }
        
        options.frame = .zero
        options.camera = .init(target: targetCoordinate, zoom: defaultZoomLevel)
        
        gmsMapView = .init(options: options)
        gmsMapView.isUserInteractionEnabled = true
        gmsMapView.delegate = context.coordinator

        return gmsMapView
    }
    
    func updateUIView(_ uiView: GMSMapView, context: Context) {}
    
    func makeCoordinator() -> MapCoordinator {
        return MapCoordinator(parent: self)
    }
    
}
