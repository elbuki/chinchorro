//
//  AppDelegate.swift
//  Chinchorro
//
//  Created by Marco Carmona on 8/27/24.
//

import GoogleMaps

class AppDelegate: NSObject, UIApplicationDelegate {
    
    let googleSDKTokenKey = "GOOGLE_MAPS_SDK_TOKEN"
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        
        guard let token = ProcessInfo.processInfo.environment[googleSDKTokenKey] else {
            fatalError("google maps token is not defined")
        }
        
        

        guard GMSServices.provideAPIKey(token) else {
            fatalError("could not provide the api key to the google maps service")
        }
        
        return true
        
    }
    
}
