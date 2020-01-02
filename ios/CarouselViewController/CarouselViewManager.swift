//
//  CarouselViewManager.swift
//  CarouselViewManager
//
//  Created by Leah Xia on 2020-01-01.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation

@objc(CarouselViewManager)
class CarouselViewManager: RCTViewManager {
  override func view() -> UIView! {
    return CarouselView()
  }
    
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }

}

