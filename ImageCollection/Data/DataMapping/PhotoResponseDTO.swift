//
//  PhotoResponseDTO.swift
//  ImageCollection
//
//  Created by Admin on 04/07/2022.
//

import Foundation

// MARK: - ImagesResponse
struct PhotosResponseDTO: Decodable {
    let hits: [Hit]
}

// MARK: - Hit
struct Hit: Decodable {
    let id: Int
    let pageURL: String
    let previewURL: String
    let largeImageURL: String

    enum CodingKeys: String, CodingKey {
        case id, pageURL,  previewURL,  largeImageURL
    }
}

// MARK: - Mappings to Domain

extension PhotosResponseDTO {
    func toDomain() -> [PhotoRecord] {
        return hits.map{ .init(id:$0.id , previewURL: $0.previewURL )}
    }
}

