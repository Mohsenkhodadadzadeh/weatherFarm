//
//  Network.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/21/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import Foundation
import Alamofire
import Combine

public final class Network {
    
    func getData<T: BaseModelProtocol>(url: URL?, method: HTTPMethod, parameters: Parameters?, encoding: ParameterEncoding = JSONEncoding.default, headers: HTTPHeaders?) -> Future<T,HttpError> {
        
        guard let strongUrl = url else {
            return Future { promise in
                promise(.failure(.urlNotValid))
            }
        }
        
        var state200: ChainProtocol = Response200()
        var state204: ChainProtocol = Response204()
        var state404: ChainProtocol = NotResponse404()
        let state500: ChainProtocol = ServerError500()
        
        state200.next = state204
        state204.next = state404
        state404.next = state500
        return Future { promise in
            AF.request(strongUrl, method: method, parameters: parameters,
                       encoding: encoding, headers: headers).validate().responseJSON { response in
                        
                        switch response.result {
                        case let .success(value):
                            if let returnValue = value as? [String: Any] {
                                if let statusCode = response.response?.statusCode {
                                    let value: AnyPublisher<T,HttpError> = state200.calculate(returnValue, status: statusCode)
                                    value.sink(receiveCompletion: { complition in
                                        switch complition {
                                        case .failure(let errorValue):
                                            promise(.failure(errorValue))
                                        case .finished:
                                            break
                                        }
                                    }) { (value) in
                                        promise(.success(value))
                                    }
                                } else {
                                    print("Alamofire can't reach statusCode class Network->\(#function)->\(#line)")
                                }
                            } else {
                                print("Network class can't transform value to dictionary class Network->\(#function)->\(#line)")
                            }
                            break
                        case let .failure(afError):
                            // handle error message later
                            print(">>>error when recevie data from API: \(String(describing: afError.errorDescription)) \n class Network->\(#function)->\(#line)")
                            break
                        }
            }
        }
        
    }
    
    
}
