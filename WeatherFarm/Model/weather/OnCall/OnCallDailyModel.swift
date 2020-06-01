//
//  OnCallDailyModel.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/21/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import Foundation


struct OnCallDailyModel: OnCallDefaultDataProtocol {
    
    var unixDate: Double
    
    var unixSunrise: Int
    
    var unixSunset: Int
    
    var temperature: OnCallDayTempModel
    
    var pressure: Int
    
    var humidity: Int
    
    var dewPoint: Double
    
    var windSpeed: Double
    
    var windDegree: Int
    
    var weather: [OnCallDailyWeatherModel]
    
    var clouds: Double
    
    var rain: Double
    
    var snow: Double
    
    var uvInMidDay: Double
}

struct OnCallDayTempModel {
    
    var day: Double
    
    var min: Double
    
    var max: Double
    
    var night: Double
    
    var evening: Double
    
    var morning: Double
}
