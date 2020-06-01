//
//  onCallCurrentWeatherModel.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/29/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import Foundation

struct OnCallCurrentWeatherModel: OnCallDefaultDataProtocol {
    var unixDate: Double
    
    var pressure: Int
    
    var humidity: Int
    
    var dewPoint: Double
    
    var windSpeed: Double
    
    var windDegree: Int
    
    var weather: [OnCallDailyWeatherModel]
    /// Temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
    var currentTemperature: Int
    
    
    
    
}
