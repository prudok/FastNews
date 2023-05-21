//
//  News.swift
//  FastNews
//
//  Created by home on 21.05.2023.
//

import Foundation

// MARK: - Protocol
protocol APIBuilder {
    var urlRequest: URLRequest { get }
    var baseURL: URL { get }
    var path: String { get }
}

enum NewsAPI {
    case getNews
}

// MARK: - API implementation
extension NewsAPI: APIBuilder {
    
    var urlRequest: URLRequest {
        return URLRequest(url: self.baseURL.appendingPathComponent(self.path))
    }
    
    var baseURL: URL {
        switch self {
        case .getNews:
            return URL(string: "https://api.lil.software")!
        }
    }
    
    var path: String {
        return "/news"
    }
}
