//
//  Environment.swift
//  chinchorro
//
//  Created by Marco Carmona on 8/28/24.
//

import Foundation

struct Environment: Decodable {
    let googleMapsSDKToken: String
    
    enum InitError: Error {
        case envFileNotFound
    }
    
    init() throws {
        guard let filePath = Bundle.main.path(forResource: "env", ofType: "json") else {
            throw InitError.envFileNotFound
        }
        
        let fileURL = URL(fileURLWithPath: filePath)
        let data = try Data(contentsOf: fileURL)
        let decoded = try JSONDecoder().decode(Environment.self, from: data)
        
        self = decoded
    }
}
