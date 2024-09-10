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
    
    var body: some View {
        MapView()
            .ignoresSafeArea()
            .onAppear(perform: {
                locationManager.checkLocationAuthorization()
            })
    }
}

#Preview {
    ContentView()
}
