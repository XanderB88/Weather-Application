//
//  WeatherData.swift
//  Weather Application
//
//  Created by Alexander on 09.09.2021.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let wind: Wind
    let weather: [Weather]
}

struct Main: Decodable {
    let temperature: Double
    let humidity: Int
}

struct Wind: Decodable {
    let windSpeed: Double
}

struct Weather: Decodable {
    let weatherIcon: String
    let description: String
}
