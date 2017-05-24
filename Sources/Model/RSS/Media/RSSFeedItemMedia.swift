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
    
    /**
     Allows particular images to be used as representative images for the media object. If multiple thumbnails are included, and time coding is not at play, it is assumed that the images are in order of importance. It has one required attribute and three optional attributes.
    */
    open var thumbnail: RSSFeedItemMediaThumbnail?
    
    /**
     <media:content> is a sub-element of either <item> or <media:group>. Media objects that are not the same content should not be included in the same <media:group> element. The sequence of these items implies the order of presentation. While many of the attributes appear to be audio/video specific, this element can be used to publish any type of media. It contains 14 attributes, most of which are optional.
     */
    open var content: RSSFeedItemMediaContent?
    
    
    // MARK: Actions
    
    func fill(withAttributes attributes: [String: String], forPath path: RSSPath) {
        
        switch path {
        
        case .RSSChannelItemMediaContent:
            content = RSSFeedItemMediaContent(attributes: attributes)
            
        case .RSSChannelItemMediaThumbnail:
            thumbnail = RSSFeedItemMediaThumbnail(attributes: attributes)
            
        default: break
        }
    }
}
