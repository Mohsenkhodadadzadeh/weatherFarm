//
//  OnCallDailyModel.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/21/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import Foundation


struct OnCallDailyModel: OnCallDefaultDataProtocol, BaseModelProtocol {
    
    var dt: Double
    
    var sunrise: Int
    
    var sunset: Int
    
    var temp: OnCallDayTempModel
    
    var pressure: Int
    
    var humidity: Int
    
    var dew_point: Double
    
    var wind_speed: Double
    
    var wind_deg: Int
    
    var weather: [OnCallDailyWeatherModel]
    
    var clouds: Double
    
    var rain: Double
    
    var snow: Double
    
    var uvi: Double
}

struct OnCallDayTempModel: BaseModelProtocol {
    
    var day: Double
    
    var min: Double
    
    var max: Double
    
    var night: Double
    
    var evening: Double
    
    var morning: Double
}
