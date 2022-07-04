//
//  GalleryRepositoryTest.swift
//  ImageCollectionTests
//
//  Created by Admin on 04/07/2022.
//

import Foundation
@testable import ImageCollection
import XCTest

class GalleryRepositoryTests: XCTestCase {

    var galleryRepository: GalleryRepository!
    override func setUp() {
        galleryRepository = DefaultGalleryRepository(networkManager: MockImageNetworkManager())
    }

    // Valid Image URL to donwload image
    func testImageForValidUrl() async {
       let image = try? await galleryRepository.getImages(for:"valid")
        
        XCTAssertNotNil(image)
    }
    
    // Invalid Image URL to donwload image
    func testImageForInValidUrl() async {
        do {
            _ = try await galleryRepository.getImages(for:"")

        }catch {
            XCTAssertEqual(error as! APIError, APIError.invalidData)
        }
    }
}
