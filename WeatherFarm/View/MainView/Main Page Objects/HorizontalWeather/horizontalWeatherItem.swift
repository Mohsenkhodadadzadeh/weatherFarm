//
//  horizontalWeatherItem.swift
//  WeatherFarm
//
//  Created by mohsen on 2020-02-25.
//  Copyright © 2020 mohsen. All rights reserved.
//

import SwiftUI

struct horizontalWeatherItem: View {
    var captionText: String
    var weatherIcon: Image
    var body: some View {
        VStack {
            Text(captionText)
                .font(.caption)
                .fontWeight(.light)
                .foregroundColor(Color("textOnHorizontalBox"))
            weatherIcon
                .foregroundColor(Color("textOnHorizontalBox"))
                .font(.title)
        }
        
    }
}


struct horizontalWeatherItem_Previews: PreviewProvider {
    static var previews: some View {
        horizontalWeatherItem(captionText: "Now", weatherIcon: Image(systemName: "cloud.bolt"))
    }
}
