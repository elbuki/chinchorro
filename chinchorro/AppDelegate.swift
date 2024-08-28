//
//  AppDelegate.swift
//  Chinchorro
//
//  Created by Marco Carmona on 8/27/24.
//

import GoogleMaps

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        
        do {
            let environmentValues = try Environment()
            
            guard GMSServices.provideAPIKey(environmentValues.googleMapsSDKToken) else {
                fatalError("could not provide the api key to the google maps service")
            }
            
            return true
        } catch {
            fatalError("could not initialize environment values: \(error.localizedDescription)")
        }
        
    }
    
}
