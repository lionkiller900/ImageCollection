//
//  GalleryViewModel.swift
//  ImageCollection
//
//  Created by Admin on 04/07/2022.
//

import Foundation

protocol GalleryViewModelInput {
    func downLoadImage(for index:Int)async -> Data?
}

protocol GalleryViewModelOutput {
    var numberOfRecords:Int {get}
}

protocol GalleryViewModelAction {
}

final class GalleryViewModel {

    private let imageRecords:[PhotoRecord]
    private let galleryUseCase: GalleryUseCase
    
    init(imageRecodrs:[PhotoRecord], galleryUseCase: GalleryUseCase) {
        self.imageRecords = imageRecodrs
        self.galleryUseCase = galleryUseCase
    }
}

extension GalleryViewModel: GalleryViewModelOutput {
    var numberOfRecords:Int {
        return imageRecords.count
    }
}

extension GalleryViewModel: GalleryViewModelInput {
    func downLoadImage(for index:Int)async -> Data? {
        let url = imageRecords[index].previewURL
      
        return  try? await galleryUseCase.execute(for: url)
    }
}
