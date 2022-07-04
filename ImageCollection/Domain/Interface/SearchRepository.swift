//
//  SearchRepository.swift
//  ImageCollection
//
//  Created by Admin on 04/07/2022.
//

import Foundation

protocol SearchRepository {
    func getImages(for keyWord: String) async throws -> [PhotoRecord]
}
