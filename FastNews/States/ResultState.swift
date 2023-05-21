//
//  ResultState.swift
//  FastNews
//
//  Created by home on 21.05.2023.
//

import Foundation

enum ResultState {
    case loading
    case success(content: [Article])
    case failed(error: Error)
}
