//
//  RSSFeedItemMedia.swift
//  FeedKit
//
//  Created by Alex Kovalov on 5/24/17.
//
//

import Foundation
import UIKit

open class RSSFeedItemMedia {
    
    // MARK: Properties
    
    open var thumbnail: RSSFeedItemMediaThumbnail?
    
    
    // MARK: Actions
    
    func fill(withAttributes attributes: [String: String], forPath path: RSSPath) {
        
        switch path {
        
        case .RSSChannelItemMediaThumbnail:
            thumbnail = RSSFeedItemMediaThumbnail(attributes: attributes)
            
        default: break
        }
    }
}
