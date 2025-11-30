//  CoinGeckoApi.swift

import Foundation

public protocol CoinGekoAPIContract {
    func request(
        with route: Route
    ) async throws -> Data
}

public final class CoinGeckoApi: NSObject, CoinGekoAPIContract {
    private let baseURL: String
    private let service: NetworkServiceProto
    
    public init(baseURL: String = "https://api.coingecko.com/api/v3",) {
        self.baseURL = baseURL
        self.service = NetworkService()
    }
    
    init(
        baseURL: String = "https://api.coingecko.com/api/v3",
        service: NetworkServiceProto = NetworkService()
    ) {
        self.baseURL = baseURL
        self.service = service
    }
    
    public func request(
        with route: Route
    ) async throws -> Data {
        let path = "\(baseURL)\(route.path)"
        let route = RouteModel(path: path, method: route.method)
        
        return try await service.request(with: route)
    }
}
