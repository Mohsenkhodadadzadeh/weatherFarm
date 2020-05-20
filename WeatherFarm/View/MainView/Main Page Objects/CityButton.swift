//
//  CityButton.swift
//  WeatherFarm
//
//  Created by mohsen on 2020-02-24.
//  Copyright © 2020 mohsen. All rights reserved.
//

import SwiftUI

struct CityButton: View {
    var cityName: String
    var body: some View {
        HStack (alignment: .center, spacing: 0) {
            Text("\(cityName) ")
                .font(.title)
            Text("(click To Change)")
                .font(.body)
        }.foregroundColor(Color("FontColor"))
            .padding(.top, 5)
    }
}


struct CityButton_Previews: PreviewProvider {
    static var previews: some View {
        CityButton(cityName: "Test")
    }
}
