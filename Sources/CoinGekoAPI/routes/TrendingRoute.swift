//
//  TrendingRoute.swift
//  CoinGekoAPI
//
//  Created by Azizbek Asadov on 20.11.2025.
//

public enum TrendingRoute: Route {
    case searchTrending
    
    public var path: String {
        switch self {
        case .searchTrending: return "/search/trending"
        }
    }
}
