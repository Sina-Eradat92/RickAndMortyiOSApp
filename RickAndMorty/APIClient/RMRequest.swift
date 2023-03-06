//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Sina Eradat on 3/4/23.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {
    /// API Constants
    private struct Constants {
        static let basUrl = "https://rickandmortyapi.com/api"
        
    }
    
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path components for API if any
    private let pathComponents: Set<String>
    
    /// Query components for API if any
    private let queryPerameters: [URLQueryItem]
    
    ///  Constructed url for api request in string format
    private var urlString: String {
        var string = Constants.basUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach {string += "/\($0)"}
        }
        
        if !queryPerameters.isEmpty {
            string += "?"
            let argumentString = queryPerameters.compactMap {
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"}.joined(separator: "&")
            string += argumentString
        }
        return string
    }
    
    /// The API URL
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// The desired http method
    public let httpMethod = "GET"
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of path components
    ///   - queryPerameters: Collection of query perameters
    public init(endpoint: RMEndpoint, pathComponents: Set<String> = [], queryPerameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryPerameters = queryPerameters
    }
}
