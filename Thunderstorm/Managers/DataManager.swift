//
//  DataManager.swift
//  Thunderstorm
//
//  Created by Christopher Myers on 3/2/17.
//  Copyright © 2017 Dragoman Developers, LLC. All rights reserved.
//

import Foundation

enum DataManagerError : Error {
    
    case Unknown
    case FailedRequest
    case InvalidResponse
}

final class DataManager {
    typealias WeatherDataCompletion = (AnyObject?, DataManagerError?) -> ()
    
    let baseURL : URL
    
    init(baseURL : URL) {
        self.baseURL = baseURL
    }
    
    
    func weatherDataForLocation(latitude : Double, longitude : Double, completion: WeatherDataCompletion) {
        
    }
}
