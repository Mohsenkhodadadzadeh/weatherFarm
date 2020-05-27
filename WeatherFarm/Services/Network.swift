//
//  Network.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/21/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import Foundation
import Alamofire

public final class Network {
    
    func getData<T: BaseModelProtocol>(url: URL?, method: HTTPMethod, parameters: Parameters?, encoding: ParameterEncoding = JSONEncoding.default, headers: HTTPHeaders?, completion: @escaping (T?) -> Void) {
        
        guard let strongUrl = url else {
            completion(nil)
            return
        }
        
        var state200: ChainProtocol = Response200()
        var state204: ChainProtocol = Response204()
        var state404: ChainProtocol = NotResponse404()
        let state500: ChainProtocol = ServerError500()
        
        state200.next = state204
        state204.next = state404
        state404.next = state500
        
        AF.request(strongUrl, method: method, parameters: parameters,
                   encoding: encoding, headers: headers).validate().responseJSON { response in
                    
                    switch response.result {
                    case let .success(value):
                        if let returnValue = value as? [String: Any] {
                            if let statusCode = response.response?.statusCode {
                                let returnObj: T? = try? state200.calculate(returnValue, status: statusCode)
                                completion(returnObj)
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
