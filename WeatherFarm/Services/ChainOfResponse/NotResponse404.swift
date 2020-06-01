//
//  NotResponse404.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/22/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import Foundation
import Combine
class NotResponse404: ChainProtocol {
    func calculate<T: BaseModelProtocol>(_ unserilized: Data, status: Int) -> AnyPublisher<T,HttpError> {
        if status == 404 {
            return Result.failure(HttpError.notFound).publisher.eraseToAnyPublisher()
        } else {
            if next != nil {
                return next!.calculate(unserilized, status: status)
            }
            return Result.failure(HttpError.notFound).publisher.eraseToAnyPublisher()
        }
    }
    var next: ChainProtocol?
}
