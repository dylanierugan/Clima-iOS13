//
//  WeatherData.swift
//  Clima
//
//  Created by Dylan Ierugan on 6/5/21.


import Foundation

// struct to pull weather data from api

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let id: Int
}
