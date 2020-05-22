//
//  GenericModel.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/22/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import Foundation

struct GenericModel<T>: BaseModelProtocol where T: BaseModelProtocol {
    
    var state: Int?
    var message: String?
    var result: T?
    init(_ model: Any) {
        if let serilizedModel = model as? [String: Any] {
            state = serilizedModel["State"] as? Int
            message = serilizedModel["Message"] as? String
            if let genericContent = serilizedModel["Result"] {
                result = T.init(genericContent)
            }
        }
    }
    
}
