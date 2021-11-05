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
    let temp: Double
    let humidity: Int
}

struct Wind: Decodable {
    let speed: Double
}

struct Weather: Decodable {
    let icon: String
    let description: String

}
