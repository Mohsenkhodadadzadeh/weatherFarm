//
//  Response204.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/22/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import Foundation
import Combine
class Response204: ChainProtocol {
    func calculate<T: BaseModelProtocol>(_ unserilized: [String: Any], status: Int) -> AnyPublisher<T,HttpError> {
        if status == 204 {
            return Result.failure(HttpError.noContent).publisher.eraseToAnyPublisher()
        } else {
            if next != nil {
                return next!.calculate(unserilized, status: status)
            }
            return Result.failure(HttpError.endOfChain).publisher.eraseToAnyPublisher()
        }
    }
    var next: ChainProtocol?
}
