//
//  NetworkChainProtocol.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/22/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import Foundation
import Combine
protocol ChainProtocol {
    
    func calculate <T: BaseModelProtocol>(_ unserilized: [String: Any], status: Int) -> AnyPublisher<T,HttpError>
    var next: ChainProtocol? { get set}
}
