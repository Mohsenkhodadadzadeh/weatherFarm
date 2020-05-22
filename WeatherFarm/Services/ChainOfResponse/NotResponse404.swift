//
//  NotResponse404.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/22/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import Foundation

class NotResponse404: ChainProtocol {
    func calculate<T: BaseModelProtocol>(_ unserilized: [String: Any], status: Int) throws -> T {
        if status == 404 {
            throw NSError(domain: "chainError", code: 404, userInfo: [NSLocalizedDescriptionKey: "End of Chain!!!"])
        } else {
            if next != nil {
                return try next!.calculate(unserilized, status: status)
            }
            throw NSError(domain: "chainError", code: 100, userInfo: [NSLocalizedDescriptionKey: "End of Chain!!!"])
        }
    }
    var next: ChainProtocol?
}
