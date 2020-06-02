//
//  Collections.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 6/2/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import Foundation

extension Collection {

    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
