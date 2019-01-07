//
//  CoreDataManager.swift
//  Seed
//
//  Created by Andrew Miotke on 1/6/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as? AppDelegate

class CoreDataManager {
    let activityCell = ActivityCell()
    var cannabis: [Cannabis] = []
    
    func fetch(completion: (_ completion: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "FuelTracking")
        
        do {
            cannabis = try managedContext.fetch(fetchRequest) as! [Cannabis]
            completion(true)
        } catch {
            debugPrint("Could not fetch data \(error.localizedDescription)")
            completion(false)
        }
    }
    
    func fetchCoreDataObjects() {
        fetch { (complete) in
            if complete { }
        }
    }
    
    func deleteAllRecords() {
        let delegate = UIApplication.shared.delegate as? AppDelegate
        let context = delegate?.persistentContainer.viewContext
        
        let deleteFetch = NSFetchRequest<NSFetchRequestResult>(entityName: "Cannabis")
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: deleteFetch)
        
        do {
            try context?.execute(deleteRequest)
            try context?.save()
        } catch {
            print ("There was an error, \(error.localizedDescription)")
        }
    }
}
