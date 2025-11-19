//
//  GlobalRoute.swift
//  CoinGekoAPI
//
//  Created by Azizbek Asadov on 20.11.2025.
//


public enum GlobalRoute: Route {
    case global
    case globalDecentralizedFinanceDefi
    
    public var path: String {
        switch self {
        case .global: return "/global"
        case .globalDecentralizedFinanceDefi: return "/global/decentralized_finance_defi"
        }
    }
}