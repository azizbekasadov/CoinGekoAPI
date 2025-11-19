//
//  File.swift
//  CoinGekoAPI
//
//  Created by Azizbek Asadov on 20.11.2025.
//

import Foundation

public enum NetworkError: LocalizedError {
    case noInternetConnection
    case unableToGetStatusCode
    case customError(description: String)
    case clientError
    case emplyResponse
    case dataIsNil
    
    var localizedDescription: String {
        switch self {
        case .dataIsNil: return "Response data is nil"
        default: return ""
        }
    }
}
