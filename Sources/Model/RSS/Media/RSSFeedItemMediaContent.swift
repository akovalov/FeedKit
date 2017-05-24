//
//  RSSFeedItemMediaContent.swift
//  FeedKit
//
//  Created by Alex Kovalov on 5/24/17.
//
//

import Foundation
import UIKit

open class RSSFeedItemMediaContent {
    
    // MARK: Properties
    
    /**
     url should specify the direct URL to the media object. If not included, a <media:player> element must be specified.
     */
    open var url: String?
    
    /**
     fileSize is the number of bytes of the media object. It is an optional attribute.
     */
    open var fileSize: String?
    
    /**
     type is the standard MIME type of the object. It is an optional attribute.
     */
    open var type: String?
    
    /**
     medium is the type of object (image | audio | video | document | executable). While this attribute can at times seem redundant if type is supplied, it is included because it simplifies decision making on the reader side, as well as flushes out any ambiguities between MIME type and object type. It is an optional attribute.
     */
    open var medium: String?
    
    /**
     isDefault determines if this is the default object that should be used for the <media:group>. There should only be one default object per <media:group>. It is an optional attribute.
     */
    open var isDefault: String?
    
    /**
     expression determines if the object is a sample or the full version of the object, or even if it is a continuous stream (sample | full | nonstop). Default value is "full". It is an optional attribute.
     */
    open var expression: String?
    
    /**
     bitrate is the kilobits per second rate of media. It is an optional attribute.
     */
    open var bitrate: String?
    
    /**
     framerate is the number of frames per second for the media object. It is an optional attribute.
     */
    open var framerate: String?
    
    /**
     samplingrate is the number of samples per second taken to create the media object. It is expressed in thousands of samples per second (kHz). It is an optional attribute.
     */
    open var samplingrate: String?
    
    /**
     channels is number of audio channels in the media object. It is an optional attribute.
     */
    open var channels: String?
    
    /**
     duration is the number of seconds the media object plays. It is an optional attribute.
     */
    open var duration: String?
    
    /**
     height is the height of the media object. It is an optional attribute.
     */
    open var height: String?
    
    /**
     width is the width of the media object. It is an optional attribute.
     */
    open var width: String?
    
    /**
     lang is the primary language encapsulated in the media object. Language codes possible are detailed in RFC 3066. This attribute is used similar to the xml:lang attribute detailed in the XML 1.0 Specification (Third Edition). It is an optional attribute.
     */
    open var lang: String?
    
    
    // MARK: Lifecycle
    
    convenience init?(attributes attributeDict: [String : String]) {
        
        if attributeDict.isEmpty {
            return nil
        }
        
        self.init()
        
        url = attributeDict["url"]
        fileSize = attributeDict["fileSize"]
        type = attributeDict["type"]
        medium = attributeDict["medium"]
        isDefault = attributeDict["isDefault"]
        expression = attributeDict["expression"]
        bitrate = attributeDict["bitrate"]
        framerate = attributeDict["framerate"]
        samplingrate = attributeDict["samplingrate"]
        channels = attributeDict["channels"]
        duration = attributeDict["duration"]
        height = attributeDict["height"]
        width = attributeDict["width"]
        lang = attributeDict["lang"]
    }

}
