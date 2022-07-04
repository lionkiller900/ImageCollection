//
//  SearchUseCaseTests.swift
//  ImageCollectionTests
//
//  Created by Admin on 04/07/2022.
//

import Foundation

@testable import ImageCollection
import XCTest

class SearchUseCaseTests: XCTestCase {

    var searchUseCase: SearchUseCase!
    
    override func setUp() {
        searchUseCase = DefaultSearchUseCase(searchRepository: MockSearchRepository())

    }
    
    // Valid Search
    func testValidSearch() async {
        
        let photoRecords =   try? await searchUseCase.execute(for: "test")
        
        XCTAssertEqual(photoRecords?.count, 1)
        XCTAssertEqual(photoRecords?.first?.id, 1)
        XCTAssertEqual(photoRecords?.first?.previewURL, "testUrl")
    }
    
    // Invalid Search
    func testInValidSearch() async {
        
        let photoRecords =   try? await searchUseCase.execute(for: "pass")
        
         XCTAssertNil(photoRecords)
    }
}
