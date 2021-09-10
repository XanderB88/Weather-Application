//
//  WeatherNetworkManager.swift
//  Weather Application
//
//  Created by Alexander on 09.09.2021.
//

import Foundation

protocol WeatherNetworkManagerDelegate{
    func didUpdateWeather(_ weatherNetworkManager: WeatherNetworkManager, weather: WeatherModel)
    func didFailWithError(error: Error)
}

class WeatherNetworkManager {
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
        guard let url = URL(string: urlString) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [self] data, response, error in
            if error != nil {
                self.delegate?.didFailWithError(error: error!)
                return
            }
            
            if let safeData = data {
                if let weather = parseJSON(weatherData: safeData) {
                    self.delegate?.didUpdateWeather(self, weather: weather)
                }
            }
        }
        task.resume()
    }
    
    func parseJSON (weatherData: Data) -> WeatherModel? {
        let decoder = JSONDecoder()
        
        do {
            let decodeData = try decoder.decode(WeatherData.self, from: weatherData)
            let currentIcon = decodeData.weather[0].weatherIcon
            let currentTemperature = decodeData.main.temperature
            let currentHumidity = decodeData.main.humidity
            let currentWind = decodeData.wind.windSpeed
            let currentCityName = decodeData.name
            let currentDescription = decodeData.weather.description
            
            let currentWeather = WeatherModel(weatherIcon: currentIcon, temperature: currentTemperature, humidity: currentHumidity, windSpeed: currentWind, cityName: currentCityName, description: currentDescription)
            
            return currentWeather
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
}
