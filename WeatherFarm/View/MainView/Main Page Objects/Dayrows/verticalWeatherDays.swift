//
//  verticalWeatherDays.swift
//  WeatherFarm
//
//  Created by mohsen on 2020-02-26.
//  Copyright © 2020 mohsen. All rights reserved.
//

import SwiftUI


struct verticalWeatherDays: View {
    var content: [DailyState] = []
    var body: some View {
        VStack {
                verticalWeatherDaysItem(content: self.content[0])
            verticalWeatherDaysItem(content: self.content[1])
            verticalWeatherDaysItem(content: self.content[2])
            verticalWeatherDaysItem(content: self.content[3])
            verticalWeatherDaysItem(content: self.content[4])
            
        }
    }
    
    init(content: [DailyState]) {
        if content.count < 5 {
            fatalError("fill 5 objects for it")
        }
        self.content = content
    }
}


struct verticalWeatherDays_Previews: PreviewProvider {
    static var previews: some View {
        verticalWeatherDays(content: [DailyState(day: "Friday", stateName: "cloud.sun.fill", minTemp: 10, maxTemp: 12),
                                      DailyState(day: "Saturday", stateName: "cloud.sun.fill", minTemp: 10, maxTemp: 12),
                                      DailyState(day: "SunDay", stateName: "cloud.sun.fill", minTemp: 10, maxTemp: 12),
                                      DailyState(day: "Monday", stateName: "cloud.sun.fill", minTemp: 10, maxTemp: 12),
                                      DailyState(day: "anyDay", stateName: "cloud.sun.fill", minTemp: 10, maxTemp: 12)])
    }
}

