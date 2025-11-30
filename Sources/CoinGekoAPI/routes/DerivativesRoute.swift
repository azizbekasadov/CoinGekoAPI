//
//  DerivativesRoute.swift
//  CoinGekoAPI
//
//  Created by Azizbek Asadov on 20.11.2025.
//

public enum DerivativesRoute: Route {
    case derivativesExchangesList
    case derivatives(includeTickers: String)
    case derivativesExchanges(
        order: String,
        perPage: Int,
        page: Int
    )
    case derivativesExchangesId(
        id: String,
        includeTickers: String
    )
    
    public var path: String {
        switch self {
        case .derivativesExchangesList: return "/derivatives/exchanges/list"
        case let .derivatives(includeTickers): return "/derivatives?include_tickers=\(includeTickers)"
        case let .derivativesExchanges(order, perPage, page):
            return "/derivatives/exchanges?order=\(order)&per_page=\(perPage)&page=\(page)"
        case let .derivativesExchangesId(id, includeTickers):
            return "/derivatives/exchanges/\(id)?include_tickers=\(includeTickers)"
        }
    }
}
