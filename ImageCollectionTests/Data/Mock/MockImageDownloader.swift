//
//  MockImageDownloader.swift
//  ImageCollectionTests
//
//  Created by Admin on 04/07/2022.
//

import Foundation
@testable import ImageCollection

class MockImageNetworkManager: Networkable {
    func get(apiRequest: ApiRequestType) async throws -> Data {
        if apiRequest.baseUrl == "valid" {
           return Data()
        }else {
            throw APIError.invalidData
        }
    }
    
}
