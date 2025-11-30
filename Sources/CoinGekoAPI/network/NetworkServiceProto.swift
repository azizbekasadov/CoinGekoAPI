//  NetworkService.swift

import Foundation

protocol NetworkServiceProto {
    func request(
        with route: Route
    ) async throws -> Data
}

final class NetworkService: NSObject, NetworkServiceProto {
    private let urlSession: URLSession
    
    init(
        _ urlSession: URLSession = .shared
    ) {
        self.urlSession = urlSession
    }
    
    func request(
        with route: Route
    ) async throws -> Data {
        let path = route.path.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? route.path
        let requestURL = URL(string: path)
        var request = URLRequest(url: requestURL!)
        request.httpMethod = route.method.rawValue
        
        do {
            let (data, response) = try await self.urlSession.data(for: request)
            
            guard let statusCode = (response as? HTTPURLResponse)?.statusCode else {
                let error = NetworkError.unableToGetStatusCode
                debugPrint(error.localizedDescription)
                throw error
            }
            
            if statusCode >= HTTPStatusCode.badRequest.rawValue {
                let error = NetworkError.clientError
                debugPrint(error)
                throw error
            }
            debugPrint("STATUS CODE: \(statusCode)")
            debugPrint("RESPONSE DATA: \(String(data: data, encoding: .utf8) ?? "NULL")")
            return data
        } catch {
            let error = NetworkError.customError(description: error.localizedDescription)
            debugPrint(error)
            throw error
        }
    }
}
