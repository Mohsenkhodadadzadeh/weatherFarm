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
       prepareModel(oncallState)
    }
    
    func prepareModel(_ onCallState: OnCallWeatherModel) {
        currentTemp = String(describing: onCallState.current.temp)
               minMaxTemp = "\(onCallState.daily[0].temp.min)°/\(onCallState.daily[0].temp.max)°"
               let location = CLLocation(latitude: onCallState.lat, longitude: onCallState.lon)
               location.fetchCityAndCountry { city, country, error in
                   guard let strongCity = city else  { return}
                   self.city = strongCity
               }
               for item in onCallState.hourly {
                   let processedItem = HourlyViewModel(item)
                   hourlyState.append(processedItem)
               }
               for item in onCallState.daily {
                   let processedItem = DailyViewModel(item)
                   dailyState.append(processedItem)
               }
    }
    
    
    func receiveData(latitude: Double, longitude: Double) {
        var disposable = Set<AnyCancellable>()
        let data: Future<OnCallWeatherModel,HttpError> = Network().getData(url: URLGeneration.OnCall.shared.getOnCallData(latitude: latitude, longitude: longitude, exclude: .current,.hourly,.daily), method: .get, parameters: nil, headers: nil)
        data.sink(receiveCompletion: { [weak self] completionFlag in
            switch completionFlag {
            case .failure(let errorData):
                print("Error in line \(#line) func \(#function) class MainView.swift is: \(errorData.localizedDescription)")
            case .finished:
                print("Data was received")
            }
        }) { [weak self] value in
            guard let strongSelf = self else { return }
            strongSelf.prepareModel(value)
        }.store(in: &disposable)
    }

}
