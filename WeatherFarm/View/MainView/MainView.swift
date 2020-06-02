//
//  MainView.swift
//  WeatherFarm
//
//  Created by mohsen on 2020-02-24.
//  Copyright © 2020 mohsen. All rights reserved.
//

import SwiftUI
import Combine

struct MainView: View {
    init(_ viewModel: MainPageViewModel) {
        mainpageViewModel = viewModel
    }
    init() {
        
    }
    var cityName: String = "Miami"
    var onCallWeather: OnCallWeatherModel?
    var mainpageViewModel: MainPageViewModel?
    var body: some View {
                ZStack {
            BackgroundView()
            VStack (alignment: .center, spacing: 10) {
                CityButton(cityName: cityName)
                    //.layoutPriority(2)
                
                craftImageView(image: Image("lightCraft"))
                   // .layoutPriority(1)
                    
                Text(mainpageViewModel?.currentTemp ?? "31°")
                    .font(.system(size: 60))
                    .fontWeight(.heavy)
                    .foregroundColor(Color("FontColor"))
                    .padding(.top, 10)
                    //.layoutPriority(1)
                Text(mainpageViewModel?.minMaxTemp ?? "31°/20°")
                    .font(.caption)
                    .fontWeight(.light)
                    .foregroundColor(Color("FontColor"))
                  //  .layoutPriority(2)
                      Spacer()
                HorizontalWeather(structContent: mainpageViewModel?.hourlyState ?? [])
                .cornerRadius(50)
                .padding([.leading, .trailing], 30)
//                HorizontalWeather(structContent: [HourlyState(time: "Now", image: "sun.min.fill"), HourlyState(time: "4", image: "cloud.rain"),  HourlyState(time: "5", image: "cloud.rain"),  HourlyState(time: "6", image: "cloud.rain"),  HourlyState(time: "7", image: "cloud.rain")])
                    
                    //.layoutPriority(2)
                
                verticalWeatherDays(content: mainpageViewModel?.dailyState ?? [])
                .padding([.trailing, .leading, .bottom], 40)
                .foregroundColor(Color("FontColor"))
//                verticalWeatherDays(content: [DailyState(day: "Friday", stateName: "cloud.sun.fill", minTemp: 10, maxTemp: 12),
//                DailyState(day: "Saturday", stateName: "cloud.sun.fill", minTemp: 10, maxTemp: 12),
//                DailyState(day: "SunDay", stateName: "cloud.sun.fill", minTemp: 10, maxTemp: 12),
//                DailyState(day: "Monday", stateName: "cloud.sun.fill", minTemp: 10, maxTemp: 12),
//                DailyState(day: "anyDay", stateName: "cloud.sun.fill", minTemp: 10, maxTemp: 12)])
//                    
                
                
                
                    //.scaleEffect(0.5)
                    //Spacer()
                }
                
            //.edgesIgnoringSafeArea(.all)
            
        }
        
    }
    mutating func receiveData() {
        var disposable = Set<AnyCancellable>()
        var result = self
        let data: Future<OnCallWeatherModel,HttpError> = Network().getData(url: URLGeneration.OnCall.shared.getOnCallData(latitude: 1111, longitude: 1111, exclude: .current,.hourly,.daily), method: .get, parameters: nil, headers: nil)
        data.sink(receiveCompletion: { completionFlag in
            switch completionFlag {
            case .failure(let errorData):
                print("Error in line \(#line) func \(#function) class MainView.swift is: \(errorData.localizedDescription)")
            case .finished:
                print("Data was received")
            }
        }) { value in
            result.mainpageViewModel = MainPageViewModel(value)
        }.store(in: &disposable)
        self = result
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


