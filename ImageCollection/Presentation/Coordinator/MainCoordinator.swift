//
//  MainCoordinator.swift
//  ImageCollection
//
//  Created by Admin on 04/07/2022.
//

import Foundation

import UIKit

protocol Coordinator: AnyObject {
    func navigatToGallery(imageRecords:[PhotoRecord])
}

class MainCoordinator: Coordinator {
    
    var navController: UINavigationController
    
    init(navBarController: UINavigationController) {
        self.navController = navBarController
    }
    
    func start() {
        let networkManager = NetworkManager()
        let searchRepository = DefaultSearchRepository(networkManager: networkManager)
        let searchUseCase = DefaultSearchUseCase(searchRepository: searchRepository)
        let  imageSearchViewModel =       SearchViewModel(searchUseCase: searchUseCase, coordinator: self)
        
        let searchViewController = SearchViewController.storyboardViewController()
        
        navController.viewControllers = [searchViewController]
        
        searchViewController.viewModel = imageSearchViewModel
        
    }
    
    func navigatToGallery(imageRecords: [PhotoRecord]) {
                
        let galleryViewController = GalleryViewController.storyboardViewController()
        
        let networkManager = NetworkManager()
        let galleryRepository = DefaultGalleryRepository(networkManager: networkManager)
        let galleryUseCase = DefualtGalleryUseCase(galleryRepository: galleryRepository)
        
        galleryViewController.galleryViewModel  = GalleryViewModel(imageRecodrs: imageRecords, galleryUseCase: galleryUseCase)
        
        navController.pushViewController(galleryViewController, animated: false)
        
    }
}
