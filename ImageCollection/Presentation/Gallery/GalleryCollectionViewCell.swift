//
//  GalleryCollectionViewCell.swift
//  ImageCollection
//
//  Created by Admin on 04/07/2022.
//

import Foundation
import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var galleryImageView: UIImageView!
    
    override func prepareForReuse() {
        self.galleryImageView.image = nil
    }
}
