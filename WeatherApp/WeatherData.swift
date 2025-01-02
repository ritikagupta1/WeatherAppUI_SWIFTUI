//
//  WeatherData.swift
//  WeatherApp
//
//  Created by Ritika Gupta on 02/01/25.
//

import Foundation

struct WeatherData: Identifiable {
    var id = UUID()
    
    let dayOfWeek: String
    let imageName: String
    let temperature: Int
}

struct WeatherAppMockData {
    static let weatherData = [
        WeatherData(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 74),
        WeatherData(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 88),
        WeatherData(dayOfWeek: "THU", imageName: "wind.snow", temperature: 55),
        WeatherData(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 60),
        WeatherData(dayOfWeek: "SAT", imageName: "snow", temperature: 25)
    ]
}
