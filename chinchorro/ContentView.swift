//
//  ContentView.swift
//  chinchorro
//
//  Created by Marco Carmona on 8/28/24.
//

import SwiftUI
import GoogleMaps

struct ContentView: View {
    var body: some View {
        MapView()
            .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
