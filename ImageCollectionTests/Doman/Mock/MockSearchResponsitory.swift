//
//  MockSearchResponsitory.swift
//  ImageCollectionTests
//
//  Created by Admin on 04/07/2022.
//

import Foundation
@testable import ImageCollection

class MockSearchRepository: SearchRepository {
    func getImages(for keyWord: String) async throws -> [PhotoRecord] {
        if keyWord == "invalid" {
            throw APIError.invalidSearch
        }
        return [PhotoRecord(id:1, previewURL: "testUrl")]
    }
}
