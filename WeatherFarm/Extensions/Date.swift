//
//  Date.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 6/1/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import Foundation


extension Date {
    func dayOfWeek() -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self).capitalized
        // or use capitalized(with: locale) if you want
    }
}
