//
//  HorizontalWeather.swift
//  WeatherFarm
//
//  Created by mohsen on 2020-02-25.
//  Copyright © 2020 mohsen. All rights reserved.
//

import SwiftUI

struct HorizontalWeather: View {
    var structContent: [HourlyViewModel]
    var body: some View {
        HStack {
            
            horizontalWeatherItem(captionText: structContent[safe: 0]?.hourTime ?? "Now", weatherIcon: structContent[safe: 0]?.weatherState ?? Image(systemName: "sun.min.fill"))
                .padding(.leading, 25)
                .padding([.top, .bottom], 10)
            Spacer()
            horizontalWeatherItem(captionText: structContent[safe: 1]?.hourTime ?? "1", weatherIcon: structContent[safe: 1]?.weatherState ?? Image(systemName: "sun.min.fill"))
            Spacer()
            horizontalWeatherItem(captionText: structContent[safe: 2]?.hourTime ?? "2", weatherIcon: structContent[safe: 2]?.weatherState ?? Image(systemName: "sun.min.fill"))
            Spacer()
            horizontalWeatherItem(captionText: structContent[safe: 3]?.hourTime ?? "3", weatherIcon: structContent[safe: 3]?.weatherState ?? Image(systemName: "sun.min.fill"))
            Spacer()
            horizontalWeatherItem(captionText: structContent[safe: 4]?.hourTime ?? "4", weatherIcon: structContent[safe: 4]?.weatherState ?? Image(systemName: "sun.min.fill"))
                .padding(.trailing, 25)
            
           
        }
        .background(Color("smallBoxWeather"))
        
    }
    
    init(structContent: [HourlyViewModel]) {
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

//struct HorizontalWeather_Previews: PreviewProvider {
//    static var previews: some View {
////        HorizontalWeather(structContent: [HourlyViewModel(time: "now", image: "cloud.bolt"), HourlyState(time: "4", image: "cloud.rain"),  HourlyState(time: "5", image: "cloud.bolt"),  HourlyState(time: "6", image: "cloud.rain"),  HourlyState(time: "7", image: "cloud.bolt") ])
//    }
//}
