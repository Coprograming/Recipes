//
//  Recipie.swift
//  recipies
//
//  Created by Kasey Schlaudt on 6/27/16.
//  Copyright © 2016 coprograming.com. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Recipie: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    func setRecipeImage(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getRecipeImg() -> UIImage {
        let img = UIImage(data: self.image!)!
        return img
    }

}
