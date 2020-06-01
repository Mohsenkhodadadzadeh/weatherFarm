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
struct OnCallWeatherModel {
    /// Geographical coordinates of the location (latitude)
    var latitude: Double
    /// Geographical coordinates of the location (longitude)
    var longitude: Double
    /// Timezone name for the requested location
    var timeZone: String
    /// Shift in seconds from UTC
    var timeZoneOffset: Double
    /// current day
    var currentDay: OnCallCurrentWeatherModel
    /// Daily forecast weather data API response
    var days: [OnCallDailyModel]
    /// Hourly forecast weather data API response
    var hours: [OnCallHourlyModel]
    
}
