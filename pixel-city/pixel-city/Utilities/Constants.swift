//
//  Constants.swift
//  pixel-city
//
//  Created by Andrew on 5/28/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import Foundation

let apiKey = "701bb0b6ed3dcf9ab796267fc2226179"

func flickrURL(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}

