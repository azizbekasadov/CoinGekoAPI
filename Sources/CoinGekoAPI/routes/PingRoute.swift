//
//  PingRoute.swift
//  CoinGekoAPI
//
//  Created by Azizbek Asadov on 20.11.2025.
//


public enum PingRoute: Route {
    case ping

    public var path: String { "/ping" }
}