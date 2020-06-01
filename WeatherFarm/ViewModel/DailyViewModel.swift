//
//  DailyViewModel.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/29/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import SwiftUI
import Combine

class DailyViewModel: ObservableObject {
        
    @Published var dayOfWeek: String!
    @Published var weatherImage: Image!
    @Published var minimumTemperature: Double!
    @Published var maximumTemperature: Double!
    
    init(_ onCallDaily: OnCallDailyModel) {
        let dayTime = Date(timeIntervalSince1970: onCallDaily.dt)
        dayOfWeek = dayTime.dayOfWeek() ?? " "
        var weatherIconName: String
        switch onCallDaily.weather[0].id {
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
        weatherImage = Image(systemName: weatherIconName)
        minimumTemperature = onCallDaily.temp.min
        maximumTemperature = onCallDaily.temp.max
        
    }
}
