//
//  Configuration.swift
//  Thunderstorm
//
//  Created by Christopher Myers on 3/2/17.
//  Copyright © 2017 Dragoman Developers, LLC. All rights reserved.
//

import Foundation

struct API {
    static let APIKey = "d47e0d371b59ef8e979861e24d10f186"
    static let BaseURL = URL(string: "https://api.forecast.io/")!
    
    static var AuthenticatedBaseURL : URL {
        return BaseURL.appendingPathComponent(APIKey)
    }
    
    
}


struct Defaults {
    static let latitude : Double = 37.8267
    static let longitude : Double = -122.423
}
