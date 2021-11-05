//
//  WeatherModel.swift
//  Weather Application
//
//  Created by Alexander on 09.09.2021.
//

import Foundation

struct WeatherModel {
    let weatherIcon: String
    let temperature: Double
    let humidity: Int
    let windSpeed: Double
    let cityName: String
    let description: String
    
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var windSpeedString: String {
        return String(format: "%.1f", windSpeed)
    }
    
    var conditionName: String {
        
        switch weatherIcon {
            case "01d":
                return "sun"
            case "02d":
                return "cloudy"
            case "03d":
                return "cloud"
            case "04n":
                return "cloud"
            case "13d":
                return "snow"
            case "10d":
                return "sun and rain"
            case "09d":
                return "rain"
            default:
                return "cloud"
        }
    }
}
