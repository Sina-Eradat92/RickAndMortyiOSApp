//
//  RMService.swift
//  RickAndMorty
//
//  Created by Sina Eradat on 3/4/23.
//

import Foundation

/// Primary API service object to get rick and morty data
final class RMService {
    /// shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    /// Send rick and morty API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> ()) {
        
    }
}
