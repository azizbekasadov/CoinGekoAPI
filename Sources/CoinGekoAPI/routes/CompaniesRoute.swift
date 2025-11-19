//
//  CompaniesRoute.swift
//  CoinGekoAPI
//
//  Created by Azizbek Asadov on 20.11.2025.
//

public enum CompaniesRoute: Route {
    case publicTreasuryCoinId(coinId: String)
    
    public var path: String {
        switch self {
        case .publicTreasuryCoinId(let coinId): 
            return "/companies/public_treasury/\(coinId)"
        }
    }
}
