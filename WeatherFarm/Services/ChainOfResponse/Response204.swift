//
//  Response204.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/22/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import Foundation

class Response204: ChainProtocol {
    func calculate<T: BaseModelProtocol>(_ unserilized: [String: Any], status: Int) throws -> T {
        if status == 204 {
            let retObj = T(["state": true])
            return retObj
        } else {
            if next != nil {
                return try next!.calculate(unserilized, status: status)
            }
            throw NSError(domain: "chainError", code: 100, userInfo: [NSLocalizedDescriptionKey: "End of Chain!!!"])
        }
    }
    var next: ChainProtocol?
}
