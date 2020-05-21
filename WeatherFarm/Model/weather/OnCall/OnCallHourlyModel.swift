//
//  OnCallHourlyModel.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/21/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import Foundation
/**
        This model Uses for keeping hourly weathers and It is one of OnCallWeatherModel subsets' model
    - SeeAlso:  `OnCallWeatherModel.swift`
 
 */
struct OnCallHourlyModel: OnCallDefaultDataProtocol {
    
    var unixDate: Int
    /// Temperature. Unit Default: Kelvin
    var temperature: Double
    
    var pressure: Int
    
    var humidity: Int
    /// Cloudiness, %
    var clouds: Double
    
    var rain: Double
    
    var snow: Double
    
    var windSpeed: Double
    
    var windDegree: Int
    
    var dewPoint: Double
     
    var weather: [OnCallDailyWeatherModel]
    
    
}
