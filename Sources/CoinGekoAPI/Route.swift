//
//  Route.swift
//  CoinGekoAPI
//
//  Created by Azizbek Asadov on 20.11.2025.
//

import Foundation

public protocol Route {
    var path: String { get }
    var method: HTTPMethod { get }
}

extension Route {
    public var method: HTTPMethod { .GET }
}

struct RouteModel: Route {
    var path: String
    var method: HTTPMethod
}
