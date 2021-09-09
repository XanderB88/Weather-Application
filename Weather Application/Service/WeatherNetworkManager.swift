//
//  WeatherNetworkManager.swift
//  Weather Application
//
//  Created by Alexander on 09.09.2021.
//

import Foundation

protocol WeatherNetworkManagerDelegate {
    func didUpdateWeather(_ weatherNetworkManager: WeatherNetworkManager, weatherModel: WeatherModel)
    func didFailWithError(error: Error)
}

struct WeatherNetworkManager {
    let apiKey = ""
    var weatherUrl: String {
        return "https://api.openweathermap.org/data/2.5/weather?appid=\(apiKey)&units=metric"
    }
    
    var delegate: WeatherNetworkManagerDelegate?
    
    func fetchWeatherByCityName(cityName: String) {
        let urlString = "\(weatherUrl)&\(cityName)"
        performRequest(with: urlString)
    }
    
    func performRequest(with urlString: String) {
        
    }
}
