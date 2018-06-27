//
//  FlickrPhotosViewController.swift
//  FlickerSearch
//
//  Created by Andrew Miotke on 6/26/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

final class FlickrPhotosViewController: UICollectionViewController {

    // MARK: Properties
    fileprivate let reuseIdentifier = "FlickrCell"
    fileprivate let sectionInset = UIEdgeInsetsMake(50.0, 20.0, 50.0, 20.0)
    fileprivate let search = [FlickrSearchResults]()
    fileprivate let flickr = Flickr()
}

// MARK: - Private
private extension FlickrPhotosViewController {
    func photoForIndexPath(indexPath: IndexPath) -> FlickrPhoto {
        return search[(indexPath as IndexPath).section].searchResults[(indexPath as IndexPath).row]
    }
}

extension FlickrPhotosViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // 1
        let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .gray)
        textField.addSubview(activityIndicator)
        activityIndicator.frame = textField.bounds
        activityIndicator.startAnimating()
        
        flickr.searchFlickrForTerm(textField.text!) {
            results, error in
            
            activityIndicator.removeFromSuperview()
            
            if let error = error {
                // 2
                print("Error searching: \(error)")
                return
            }
            
            if let results = results {
                // 3
                print("found \(results.searchResults.count) matching \(results.searchTerm)")
                self.searches.insert(results, at: 0)
                
                // 4
                self.collectionView?.reloadData()
            }
        }
        
        textField.text = nil
        textField.resignFirstResponder()
        return true
    }
}
