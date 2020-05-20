//
//  MainView.swift
//  WeatherFarm
//
//  Created by mohsen on 2020-02-24.
//  Copyright © 2020 mohsen. All rights reserved.
//

import SwiftUI

struct MainView: View {
    init() {
        
    }
    var cityName: String = "Miami"
    var body: some View {
        ZStack {
            BackgroundView()
            VStack (alignment: .center, spacing: 10) {
                CityButton(cityName: cityName)
                    //.layoutPriority(2)
                
                craftImageView(image: Image("lightCraft"))
                   // .layoutPriority(1)
                    
                Text("31°")
                    .font(.system(size: 60))
                    .fontWeight(.heavy)
                    .foregroundColor(Color("FontColor"))
                    .padding(.top, 10)
                    //.layoutPriority(1)
                Text("31°/20°")
                    .font(.caption)
                    .fontWeight(.light)
                    .foregroundColor(Color("FontColor"))
                  //  .layoutPriority(2)
                      Spacer()
                HorizontalWeather(structContent: [HourlyState(time: "Now", image: "sun.min.fill"), HourlyState(time: "4", image: "cloud.rain"),  HourlyState(time: "5", image: "cloud.rain"),  HourlyState(time: "6", image: "cloud.rain"),  HourlyState(time: "7", image: "cloud.rain")])
                    .cornerRadius(50)
                    .padding([.leading, .trailing], 30)
                    //.layoutPriority(2)
                
                
                verticalWeatherDays(content: [DailyState(day: "Friday", stateName: "cloud.sun.fill", minTemp: 10, maxTemp: 12),
                DailyState(day: "Saturday", stateName: "cloud.sun.fill", minTemp: 10, maxTemp: 12),
                DailyState(day: "SunDay", stateName: "cloud.sun.fill", minTemp: 10, maxTemp: 12),
                DailyState(day: "Monday", stateName: "cloud.sun.fill", minTemp: 10, maxTemp: 12),
                DailyState(day: "anyDay", stateName: "cloud.sun.fill", minTemp: 10, maxTemp: 12)])
                    .padding([.trailing, .leading, .bottom], 40)
                    .foregroundColor(Color("FontColor"))
                
                
                
                    //.scaleEffect(0.5)
                    //Spacer()
                }
                
            //.edgesIgnoringSafeArea(.all)
            
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView()
            MainView()
            .previewDevice("iPhone SE")
                .colorScheme(.dark)
            MainView()
                .previewDevice("iPhone 7")
                      
        }
    }
}


