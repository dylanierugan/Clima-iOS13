//
//  WeatherModel.swift
//  Clima
//
//  Created by Dylan Ierugan on 6/5/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

// struct to store data from api

struct WeatherModel {
    let conditionID : Int
    let cityName : String
    let temp : Double
    
    var temperatureString: String {
        return String(format: "%.1f", temp)
    }
    
    var conditionName : String {
        switch conditionID {
            case 200...232:
                return "cloud.bolt"
            case 300...321:
                return "cloud.drizzle"
            case 500...531:
                return "cloud.rain"
            case 600...622:
                return "cloud.snow"
            case 701...781:
                return "cloud.fog"
        case 800...801:
                return "sun.max"
        case 802...804:
                return "cloud"
            default:
                return "cloud"
        }
    }
}
