//
//  CLLocation.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/29/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import MapKit

extension CLLocation {
    func fetchCityAndCountry(completion: @escaping (_ city: String?, _ country:  String?, _ error: Error?) -> ()) {
        CLGeocoder().reverseGeocodeLocation(self) { completion($0?.first?.locality, $0?.first?.country, $1) }
    }
}
