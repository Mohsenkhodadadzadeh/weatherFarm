//
//  MainPageViewModel.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/27/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import SwiftUI
import Combine
import MapKit
class MainPageViewModel: ObservableObject {
    
    @Published var craftImage: Image!
    @Published var currentTemp: String!
    @Published var minMaxTemp: String!
    @Published var city: String!
    
    var hourlyState: [HourlyViewModel] = []
    var dailyState: [DailyViewModel] = []
    
    init(_ oncallState: OnCallWeatherModel) {
        currentTemp = String(describing: oncallState.current.temp)
        minMaxTemp = "\(oncallState.daily[0].temp.min)°/\(oncallState.daily[0].temp.max)°"
        let location = CLLocation(latitude: oncallState.lat, longitude: oncallState.lon)
        location.fetchCityAndCountry { city, country, error in
            guard let strongCity = city else  { return}
            self.city = strongCity
        }
        for item in oncallState.hourly {
            let processedItem = HourlyViewModel(item)
            hourlyState.append(processedItem)
        }
        for item in oncallState.daily {
            let processedItem = DailyViewModel(item)
            dailyState.append(processedItem)
        }
    }
    
}
