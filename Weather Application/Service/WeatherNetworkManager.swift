//
//  WeatherNetworkManager.swift
//  Weather Application
//
//  Created by Alexander on 09.09.2021.
//

import Foundation
import CoreLocation

class WeatherNetworkManager {
    
    func fetchWeather(withURL url: String, completion: @escaping (WeatherModel) -> ()) {
        
        guard let url = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            
            guard let data = data else { return }
            
            do {
                let decoder = JSONDecoder()
                let weatherDecoded = try decoder.decode(WeatherData.self, from: data)
                
                let temp = weatherDecoded.main.temp
                let hum = weatherDecoded.main.humidity
                let wind = weatherDecoded.wind.speed
                
                let description = weatherDecoded.weather[0].description
                let icon = weatherDecoded.weather[0].icon
                
                let name = weatherDecoded.name
            
                let weather = WeatherModel(weatherIcon: icon, temperature: temp, humidity: hum, windSpeed: wind, cityName: name, description: description)
                
                completion(weather)
            } catch let error {
                print(error.localizedDescription)
            }
        }.resume()
        
    }
   
}
