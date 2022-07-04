//
//  MockGalleryResponsitory.swift
//  ImageCollectionTests
//
//  Created by Admin on 04/07/2022.
//

import Foundation
@testable import ImageCollection

class MockGalleryRepository: GalleryRepository{
    func getImages(for url: String) async throws -> Data {
        if url == "InvalidUrl" {
            throw APIError.invalidData
        }
        return Data()
    }
}
