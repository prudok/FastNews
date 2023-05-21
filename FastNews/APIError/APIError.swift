//
//  APIError.swift
//  FastNews
//
//  Created by home on 21.05.2023.
//

import Foundation

enum APIError: Error {
    case decodingError
    case errorCode(Int)
    case unknown
}

extension APIError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .decodingError:
            return "Failed to decode the object from the service."
        case .errorCode(let code):
            return "Error \(code)"
        case .unknown:
            return "Unknown error."
        }
    }
}
