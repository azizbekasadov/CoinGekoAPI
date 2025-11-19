//
//  ExchangeRatesRoute.swift
//  CoinGekoAPI
//
//  Created by Azizbek Asadov on 20.11.2025.
//


public enum ExchangeRatesRoute: Route {
    case exchangeRates
    
    public var path: String {
        switch self {
        case .exchangeRates: return "/exchange_rates"
        }
    }
}