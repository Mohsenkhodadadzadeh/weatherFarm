//
//  OnCallDefaultDataProtocol.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/21/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import Foundation
/**
       This protocol uses for just daily onCall API
        ## Usage Example ##
 ```
        var hour: OnCallDefaultDataProtocol = OnCallHourlyModel()
 ```
*/
protocol OnCallDefaultDataProtocol {
    /// Return or save time of the forecasted data, unix, UTC
    var unixDate: Int { get set }
    /// Atmospheric pressure on the sea level, hPa
    var pressure: Int { get set }
    /// Humidity, %
    var humidity: Int { get set }
    /// Atmospheric temperature (varying according to pressure and humidity) below which water droplets begin to condense and dew can form. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
    var dewPoint: Double { get set }
    /// Wind speed. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour.
    var windSpeed: Double { get set }
    /// Wind direction, degrees (meteorological)
    var windDegree: Int { get set }
    /// weather detail
    var weather: [OnCallDailyWeatherModel] { get set }
   
}
