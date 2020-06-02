//
//  verticalWeatherDaysItem.swift
//  WeatherFarm
//
//  Created by mohsen on 2020-02-26.
//  Copyright © 2020 mohsen. All rights reserved.
//

import SwiftUI

struct verticalWeatherDaysItem: View {
    var content: DailyViewModel
    var body: some View {
        HStack {
            Text(content.dayOfWeek)
                .font(.body)
                .fontWeight(.medium)
            Spacer()
            content.weatherImage
                .font(.title)
            Spacer()
            HStack(alignment: .center, spacing: 5) {
                Text("\(content.minimumTemperature)")
                    .font(.body)
                    .fontWeight(.medium)
                Text("\(content.maximumTemperature)")
                    .font(.body)
                    .fontWeight(.medium)
            }
        }
    }
}


//struct verticalWeatherDaysItem_Previews: PreviewProvider {
//    static var previews: some View {
//        verticalWeatherDaysItem(content: DailyState(day: "Friday", stateName: "cloud.sun.fill", minTemp: 1, maxTemp: 10))
//    }
//}
