//
//  NetworkError.swift
//  ProjectCodableWED
//
//  Created by Sebastian Guiscardo on 3/1/23.
//

import Foundation

enum NetworkError: LocalizedError {
    
    case invalidURL
    case thrownError(Error)
    case noData
    case unableToDecode
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Invalid URL. Check your endpoint."
        case .thrownError(let error):
            return "Thrown error. Error was \(error.localizedDescription)"
        case .noData:
            return "No data received from successful network fetch."
        case .unableToDecode:
            return "Unable to decode model object from data."
        }
    }
}
