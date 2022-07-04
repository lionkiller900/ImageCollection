//
//  MockNetworkManager.swift
//  ImageCollectionTests
//
//  Created by Admin on 04/07/2022.
//

import Foundation
@testable import ImageCollection

class MockNetworkManager: Networkable {
    func get(apiRequest: ApiRequestType) async throws -> Data {
        
        let bundle = Bundle(for:MockNetworkManager.self)
        
        guard let url = bundle.url(forResource: apiRequest.params["q"], withExtension:"json"),
              let data = try? Data(contentsOf: url) else {
            throw APIError.invalidData
        }
        return data
    }
    
}
