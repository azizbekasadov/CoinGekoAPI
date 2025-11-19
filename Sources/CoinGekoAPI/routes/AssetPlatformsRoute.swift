//
//  AssetPlatformsRoute.swift
//  CoinGekoAPI
//
//  Created by Azizbek Asadov on 20.11.2025.
//

public enum AssetPlatformsRoute: Route {
    case assetPlatforms
    
    public var path: String {
        switch self {
        case .assetPlatforms: return "/asset_platforms"
        }
    }
}
