//
//  CarouselView.swift
//  NativeViewController
//
//  Created by Leah Xia on 2020-01-01.
//  Copyright © 2020 Facebook. All rights reserved.
//

import UIKit
import INSPhotoGallery

class CarouselView : UIView {
    
    var photos: [INSPhotoViewable] = []

    override init(frame: CGRect) {
        super.init(frame: frame)      
        showCarouselView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @objc func showCarouselView() {

        let imageUrl = URL(string: "https://homepages.cae.wisc.edu/~ece533/images/airplane.png")
        let photo = INSPhoto(imageURL: imageUrl, thumbnailImageURL: imageUrl)
    
        photos.append(photo)
        photos.append(photo)
        
        let currentPhoto = photos[0]
        let galleryPreview = INSPhotosViewController(photos: photos, initialPhoto: currentPhoto)

        presentViewController(photoVC: galleryPreview)
    }
    
    func presentViewController(photoVC: INSPhotosViewController) {
        var topVC = UIApplication.shared.keyWindow?.rootViewController
        let navController = UINavigationController(rootViewController: photoVC)
        navController.modalPresentationStyle = .fullScreen
        navController.isNavigationBarHidden = true
        topVC?.present(navController, animated: true, completion: nil)
    }
}

