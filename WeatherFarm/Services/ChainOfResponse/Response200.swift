//
//  Response200.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/22/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import UIKit
import Combine
class Response200: ChainProtocol {
    func calculate<T: BaseModelProtocol>(_ unserilized: [String: Any], status: Int) -> AnyPublisher<T,HttpError> {
        
        if status == 200 {
            let retObj = T(unserilized)
            return Result.success(retObj).publisher.eraseToAnyPublisher()
        } else {
            if next != nil {
                return next!.calculate(unserilized, status: status)
            }
            return Result.failure(HttpError.noContent).publisher.eraseToAnyPublisher()
        }
    }
    var next: ChainProtocol?
}
