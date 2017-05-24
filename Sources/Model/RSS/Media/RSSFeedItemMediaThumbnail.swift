//
//  RSSFeedItemMediaThumbnail.swift
//  FeedKit
//
//  Created by Alex Kovalov on 5/24/17.
//
//

import Foundation
import UIKit

open class RSSFeedItemMediaThumbnail {
    
    // MARK: Properties
    
    open var width: String?
    open var height: String?
    open var url: String?
    
    
    // MARK: Lifecycle
    
    convenience init?(attributes attributeDict: [String : String]) {
        
        if attributeDict.isEmpty {
            return nil
        }
        
        self.init()
        
        width = attributeDict["width"]
        height = attributeDict["height"]
        url = attributeDict["url"]
    }

}
