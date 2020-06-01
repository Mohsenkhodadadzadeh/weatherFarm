//
//  onCallweatherModel.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/21/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import Foundation
/**
            This model is used as the base model for OnCall API Model
 */
struct OnCallWeatherModel: BaseModelProtocol {
   
    
    /// Geographical coordinates of the location (latitude)
    var lat: Double
    /// Geographical coordinates of the location (longitude)
    var lon: Double
    /// Timezone name for the requested location
    var timezone: String
    /// Shift in seconds from UTC
    var timezone_offset: Double
    /// current day
    var current: OnCallCurrentWeatherModel
    /// Daily forecast weather data API response
    var daily: [OnCallDailyModel]
    /// Hourly forecast weather data API response
    var hourly: [OnCallHourlyModel]
    
    
}
