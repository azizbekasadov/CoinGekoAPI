//
//  SearchRoute.swift
//  CoinGekoAPI
//
//  Created by Azizbek Asadov on 20.11.2025.
//


public enum SearchRoute: Route {
    case search(query: String)
    
    public var path: String {
        switch self {
        case .search(let query): return "/search?query=\(query)"
        }
    }
}