//
//  MainPageViewModel.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/27/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import UIKit
import Combine
class MainPageViewModel: ObservableObject {
    
    @Published var craftImage: UIImage!
    @Published var currentTemp: String!
    @Published var minMaxTemp: String!
    @Published var city: String!
    
}
