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
struct OnCallHourlyModel: OnCallDefaultDataProtocol, BaseModelProtocol {
    
    var dt: Double
    /// Temperature. Unit Default: Kelvin
    var temp: Double
    
    var pressure: Int
    
    var humidity: Int
    /// Cloudiness, %
    var clouds: Double
    
    var rain: Double
    
    var snow: Double
    
    var wind_speed: Double
    
    var wind_deg: Int
    
    var dew_point: Double
     
    var weather: [OnCallDailyWeatherModel]
    
    
}
