//
//  HorizontalWeather.swift
//  WeatherFarm
//
//  Created by mohsen on 2020-02-25.
//  Copyright © 2020 mohsen. All rights reserved.
//

import SwiftUI

struct HorizontalWeather: View {
    var structContent: [HourlyState]
    var body: some View {
        HStack {
            
            horizontalWeatherItem(captionText: structContent[0].stateTime, weatherIcon: structContent[0].image)
                .padding(.leading, 25)
                .padding([.top, .bottom], 10)
            Spacer()
            horizontalWeatherItem(captionText: structContent[1].stateTime, weatherIcon: structContent[1].image)
            Spacer()
            horizontalWeatherItem(captionText: structContent[2].stateTime, weatherIcon: structContent[2].image)
            Spacer()
            horizontalWeatherItem(captionText: structContent[3].stateTime, weatherIcon: structContent[3].image)
            Spacer()
            horizontalWeatherItem(captionText: structContent[4].stateTime, weatherIcon: structContent[4].image)
                .padding(.trailing, 25)
            
           
        }
        .background(Color("smallBoxWeather"))
        
    }
    
    init(structContent: [HourlyState]) {
        if structContent.count < 5 {
            fatalError("this portion needs 5 item to show")
        }
        self.structContent = structContent
    }
    
    
//    private func createViews() -> [AnyView] {
//        var retObject: [AnyView] = []
//        structContent.forEach { (item) in
//            let object = horizontalWeatherItem(captionText: item.stateTime, weatherIcon: item.getImage)
//            retObject.append(object as AnyView)
//        }
//
//        return retObject
//    }
}

struct HorizontalWeather_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalWeather(structContent: [HourlyState(time: "now", image: "cloud.bolt"), HourlyState(time: "4", image: "cloud.rain"),  HourlyState(time: "5", image: "cloud.bolt"),  HourlyState(time: "6", image: "cloud.rain"),  HourlyState(time: "7", image: "cloud.bolt") ])
    }
}
