//
//  IndexesRoute.swift
//  CoinGekoAPI
//
//  Created by Azizbek Asadov on 20.11.2025.
//

public enum IndexesRoute: Route {
    case indexesList
    case indexes(
        perPage: Int,
        page: Int
    )
    case indexesMarketId(
        marketId: String,
        id: String
    )
    
    public var path: String {
        switch self {
        case .indexesList: return "/indexes/list"
        case .indexes(
            let perPage,
            let page
        ): return "/indexes?per_page=\(perPage)&page=\(page)"
        case .indexesMarketId(
            let marketId,
            let id
        ): return "/indexes/\(marketId)/\(id)"
        }
    }
}
