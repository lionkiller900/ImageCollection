//
//  GalleryUseCaseTests.swift
//  ImageCollectionTests
//
//  Created by Admin on 04/07/2022.
//

import Foundation

@testable import ImageCollection
import XCTest

class GalleryUseCaseTests: XCTestCase {
    
    var galleryUseCase: GalleryUseCase!
    
    override  func setUp() {
        galleryUseCase = DefualtGalleryUseCase(galleryRepository: MockGalleryRepository())
    }
    
    // Valid URL Image Download
    func testExecute_validURL() async {
        
        let imageData =  try? await galleryUseCase.execute(for: "validUrl")
        
        XCTAssertNotNil(imageData)
    }
    
    // Valid URL Image Download
    func testExecute_InvalidURL() async {
        
        let imageData =  try? await galleryUseCase.execute(for: "InvalidUrl")
        
        XCTAssertNil(imageData)
    }
    
}
