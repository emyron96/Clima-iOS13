//
//  WeatherModel.swift
//  Clima
//
//  Created by Myron Evans Jr. on 8/23/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel{
    let conditionId: Int
    let cityName: String
    let temperature: Double
    var temperatureString: String {
        return String(format:"%.1f", temperature)
    }
    var conditionName: String {
        
        var name: String
        switch conditionId {
        case 200...232:
            name = "cloud.bolt"
        case 300...321:
            name = "cloud.drizzle"
        case 500...531:
            name = "cloud.rain"
        case 600...622:
            name = "cloud.snow"
        case 701...781:
        name = "cloud.fog"
        case 800:
        name = "sun.max"
        case 801...804:
        name = "cloud.bolt"
        default:
        name = "cloud"
        }
        
        return name
    }
    
}
