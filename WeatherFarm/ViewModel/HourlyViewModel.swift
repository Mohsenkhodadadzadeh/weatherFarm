//
//  HourlyViewModel.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/29/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import SwiftUI
import Combine

class HourlyViewModel: ObservableObject {
    @Published var hourTime: String!
    @Published var weatherState: Image!
    
    init(_ onCallHourly: OnCallHourlyModel) {
        let date = Date(timeIntervalSince1970: onCallHourly.unixDate)
        hourTime = String(describing: Calendar.current.component(.hour, from: date))
        
        var weatherIconName: String
        switch onCallHourly.weather[0].id {
        case 200...299:
            weatherIconName = "cloud.bolt.rain.fill"
        case 300...399:
            weatherIconName = "cloud.drizzle.fill"
        case 500...599:
            weatherIconName = "cloud.rain.fill"
        case 600...699:
            weatherIconName = "cloud.snow.fill"
        case 800:
            weatherIconName = "sun.max.fill"
        case 801...899:
            weatherIconName = "cloud.fill"
        default:
            weatherIconName = "cloud.sun.bolt" // :))
        }
        weatherState = Image(systemName: weatherIconName)
        
    }
    
}
