//
//  SearchViewStates.swift
//  ImageCollection
//
//  Created by Admin on 04/07/2022.
//

import Foundation

enum SearchViewStates: Equatable {
    case showActivityIndicator
    case showPhotosView
    case showError(String)
    case none
}
