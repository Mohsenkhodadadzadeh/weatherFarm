//
//  verticalWeatherDaysItem.swift
//  WeatherFarm
//
//  Created by mohsen on 2020-02-26.
//  Copyright © 2020 mohsen. All rights reserved.
//

import SwiftUI

struct verticalWeatherDaysItem: View {
    var content: DailyState
    var body: some View {
        HStack {
            Text(content.day)
                .font(.body)
                .fontWeight(.medium)
            Spacer()
            content.state
                .font(.title)
            Spacer()
            HStack(alignment: .center, spacing: 5) {
                Text("\(content.minTemp)")
                    .font(.body)
                    .fontWeight(.medium)
                Text("\(content.maxTemp)")
                    .font(.body)
                    .fontWeight(.medium)
            }
        }
    }
}


struct verticalWeatherDaysItem_Previews: PreviewProvider {
    static var previews: some View {
        verticalWeatherDaysItem(content: DailyState(day: "Friday", stateName: "cloud.sun.fill", minTemp: 1, maxTemp: 10))
    }
}
