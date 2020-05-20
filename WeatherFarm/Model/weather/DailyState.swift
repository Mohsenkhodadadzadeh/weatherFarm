//
//  DailyState.swift
//  WeatherFarm
//
//  Created by mohsen on 2020-02-26.
//  Copyright © 2020 mohsen. All rights reserved.
//

import SwiftUI

struct DailyState {
    var day: String
    var state: Image
    var minTemp: Int
    var maxTemp: Int
    
    init(day: String, stateName: String, minTemp: Int, maxTemp: Int) {
        self.day = day
        self.state = Image(systemName: stateName)
        self.minTemp = minTemp
        self.maxTemp = maxTemp
    }
}
