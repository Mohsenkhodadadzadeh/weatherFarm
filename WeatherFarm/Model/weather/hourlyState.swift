//
//  hourlyState.swift
//  WeatherFarm
//
//  Created by mohsen on 2020-02-26.
//  Copyright © 2020 mohsen. All rights reserved.
//

import UIKit
import SwiftUI

struct HourlyState {
    var stateTime: String
    var image: Image
    
    init(time: String, image: String) {
        stateTime = time
        self.image = Image(systemName: image)
    }
}
