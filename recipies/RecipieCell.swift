//
//  RecipieCell.swift
//  recipies
//
//  Created by Kasey Schlaudt on 6/27/16.
//  Copyright © 2016 coprograming.com. All rights reserved.
//

import UIKit

class RecipieCell: UITableViewCell {

    @IBOutlet weak var recipeTitle: UILabel!
    @IBOutlet weak var recipeImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configureCell(recipe: Recipie) {
        recipeTitle.text = recipe.title
        recipeImg.image = recipe.getRecipeImg()
    }
    
}
