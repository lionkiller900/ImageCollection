//
//  MockGalleryUseCase.swift
//  ImageCollectionTests
//
//  Created by Admin on 04/07/2022.
//

import Foundation
@testable import ImageCollection


class MockGalleryUseCase: GalleryUseCase {
    func execute(for url: String) async throws -> Data {
        
        if url == "InvalidUrl" {
            throw APIError.invalidData
        }
        return Data()
    }
}
