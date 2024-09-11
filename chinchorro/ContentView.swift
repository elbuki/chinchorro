//
//  ContentView.swift
//  chinchorro
//
//  Created by Marco Carmona on 8/28/24.
//

import SwiftUI
import GoogleMaps

struct ContentView: View {
    @StateObject private var locationManager = LocationManager()
    @State var currentCoordinate: CLLocationCoordinate2D? = nil
    
    var body: some View {
        ZStack {
            MapView(
                currentCoordinate: $currentCoordinate,
                currentLocation: $locationManager.location
            )
            .ignoresSafeArea()
            .onAppear(perform: {
                let isEnabled = locationManager.checkLocationAuthorization()
                
                print(isEnabled)
                currentCoordinate = locationManager.location
                print(currentCoordinate)
            })
           
            VStack {
            if let location = currentCoordinate {

                    Text("Camera latitude: \(location.latitude)")
                    Text("Camera longitude: \(location.longitude)")
                }
                
                if let currentLocation = locationManager.location {
                    Text("Current latitude: \(currentLocation.latitude)")
                    Text("Current longitude: \(currentLocation.longitude)")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
