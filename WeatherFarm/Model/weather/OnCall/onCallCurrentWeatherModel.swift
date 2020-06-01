//
//  onCallCurrentWeatherModel.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/29/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import Foundation

struct OnCallCurrentWeatherModel: OnCallDefaultDataProtocol, BaseModelProtocol {
    var dt: Double
    
    var pressure: Int
    
    var humidity: Int
    
    var dew_point: Double
    
    var wind_speed: Double
    
    var wind_deg: Int
    
    var weather: [OnCallDailyWeatherModel]
    /// Temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
    var temp: Double
    
    
    
    
}
