//
//  GenericArray.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/22/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import Foundation

struct GenericArray<T>: BaseModelProtocol where T: BaseModelProtocol {
    var object: [T]
    init(_ model: Any) {
        object = [T]()
        if let serilizedModel = model as? [Any] {
            for item in serilizedModel {
               // let appendObj = T.init(item)
             //   object.append(appendObj)
            }
        }
    }
}
