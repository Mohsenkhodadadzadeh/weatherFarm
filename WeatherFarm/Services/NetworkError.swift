//
//  NetworkError.swift
//  WeatherFarm
//
//  Created by Mohsen khodadadazadeh on 5/28/20.
//  Copyright © 2020 mohsen. All rights reserved.
//

import Foundation

enum HttpError: Error {
    /// error 400
    case badRequest
    /// error 404
    case notFound
    /// error 500
    case internalServerError
    /// happening when url is nil
    case urlNotValid
    /// error 204
    case noContent
    /// not compatibale with chain
    case endOfChain
}
