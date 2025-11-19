//
//  ContractRoute.swift
//  CoinGekoAPI
//
//  Created by Azizbek Asadov on 20.11.2025.
//

public struct Contract: Identifiable {
    public let id: String
    let contractAddress: String
    let vsCurrency: String
    let days: String
    let from: String
    let to: String
    
    public init(
        id: String,
        contractAddress: String,
        vsCurrency: String = "",
        days: String = "",
        from: String = "",
        to: String = ""
    ) {
        self.id = id
        self.contractAddress = contractAddress
        self.vsCurrency = vsCurrency
        self.days = days
        self.from = from
        self.to = to
    }
}

public enum ContractRoute: Route {
    case contract(Contract)
    case contractMarketChart(Contract)
    case contractMarketChartRange(Contract)
    
    public var path: String {
        switch self {
        case .contract(let contract):
            return "/coins/\(contract.id)/contract/\(contract.contractAddress)"
        case .contractMarketChart(let contract):
            return "/coins/\(contract.id)/contract/\(contract.contractAddress)/market_chart?vs_currency=\(contract.vsCurrency)&days=\(contract.days)"
        case .contractMarketChartRange(let contract):
            return "/coins/\(contract.id)/contract/\(contract.contractAddress)/market_chart/range?vs_currency=\(contract.vsCurrency)&from=\(contract.from)&to=\(contract.to)"
        }
    }
}
