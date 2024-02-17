//
//  WeatherDataModel.swift
//  SAMPLEIOSAPP
//
//  Created by Mangi Wimalaweera on 2024-02-10.
//

import Foundation

struct WeatherDataModel : Identifiable, Hashable {
    var id = UUID().uuidString
    var dayName : String = ""
    var icon : String = ""
    var weatherName : String = ""
    var temp : String = ""
    
}

var sampleWeatherData = [
    WeatherDataModel(dayName: "Mon", icon: "sun.max.fill", weatherName: "Sunny Day", temp: "24/32"),
    WeatherDataModel(dayName: "Tue", icon: "sun.max", weatherName: "Mostly Clear", temp: "28/25"),
    WeatherDataModel(dayName: "Wed", icon: "sun.rain.fill", weatherName: "Sunny & Rainy", temp: "28/26"),
    WeatherDataModel(dayName: "Thu", icon: "cloud.heavyrain.fill", weatherName: "Heavy Rain", temp: "18/20"),
    WeatherDataModel(dayName: "Fri", icon: "rainbow", weatherName: "Rainbow Weather", temp: "18/19"),
    WeatherDataModel(dayName: "Sat", icon: "cloud.bolt.rain.fill", weatherName: "Thunder & Storm", temp: "14/23"),
    WeatherDataModel(dayName: "Sun", icon: "wind.snow", weatherName: "Heavy Wind", temp: "21/16")
]
