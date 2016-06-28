//
//  Recipie+CoreDataProperties.swift
//  recipies
//
//  Created by Kasey Schlaudt on 6/27/16.
//  Copyright © 2016 coprograming.com. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Recipie {

    @NSManaged var image: NSData?
    @NSManaged var ingredients: String?
    @NSManaged var steps: String?
    @NSManaged var title: String?

}
