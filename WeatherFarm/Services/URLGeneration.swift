//
//  URLGeneration.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/22/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import Foundation


class URLGeneration {
    fileprivate static func baseUrl() -> String {
        return "https://api.openweathermap.org/data"
    }
    
    public final class OnCall {
        
        private static let apiVersion: String = "2.5"
        
        private var ApiKey: String!
        
        public static let shared = OnCall()
        
        private init() {
            guard let API_KEY = ProcessInfo.processInfo.environment["API_KEY"], !API_KEY.isEmpty else {
                fatalError("You must add your API_KEY to Edit Schema -> Run -> Arguments -> Enviorment Variables -> API_KEY value")
            }
            ApiKey = API_KEY
        }
        
        private func baseUrl() -> String {
            return "\(URLGeneration.baseUrl())/\(URLGeneration.OnCall.apiVersion)"
        }
        
        public func getOnCallData( latitude: Double, longitude: Double, exclude: OnCallParametersEnum... ) -> URL? {
            let urlString = "\(baseUrl())/onecall?lat=\(String(describing: latitude))&lon=\(String(describing: longitude))&exclude=\(exclude.map { $0.rawValue }.split(separator: ","))&appid=\(String(describing: ApiKey))"
            return URL(string: urlString)
        }
        
    }
    
    
 
}
