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

    private let defaultZoomLevel: Float = 10
    
    func makeUIView(context: Context) -> GMSMapView {
        let sanFrancisco = CLLocationCoordinate2D(latitude: 37.7576, longitude: -122.4194)
        let options = GMSMapViewOptions()
        var gmsMapView: GMSMapView
        
        options.frame = .zero
        options.camera = .init(target: sanFrancisco, zoom: defaultZoomLevel)
        
        gmsMapView = .init(options: options)
        gmsMapView.isUserInteractionEnabled = true

        return gmsMapView
    }
    
    func updateUIView(_ uiView: GMSMapView, context: Context) {}
    
}
