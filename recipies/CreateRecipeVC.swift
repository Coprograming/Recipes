//
//  CreateRecipeVC.swift
//  recipies
//
//  Created by Kasey Schlaudt on 6/27/16.
//  Copyright © 2016 coprograming.com. All rights reserved.
//

import UIKit
import CoreData

class CreateRecipeVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var recipeTitle: UITextField!
    @IBOutlet weak var recipeIngredients: UITextField!
    @IBOutlet weak var recipeSteps: UITextField!
    @IBOutlet weak var recipeImg: UIImageView!
    @IBOutlet weak var addRecipeBtn: UIButton!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        recipeImg.layer.cornerRadius = 4.0
        recipeImg.clipsToBounds = true
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        recipeImg.image = image
    }
    
    @IBAction func addImg(sender: AnyObject) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func creatRecipe(sender: AnyObject) {
        if let title = recipeTitle.text where title != "" {
            
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Recipie", inManagedObjectContext: context)!
            let recipe = Recipie(entity: entity, insertIntoManagedObjectContext: context)
            recipe.title = title
            print(recipe.title)
            recipe.ingredients = recipeIngredients.text
            print(recipe.ingredients)
            recipe.steps = recipeSteps.text
            print(recipe.steps)
            recipe.setRecipeImage(recipeImg.image!)
            
            context.insertObject(recipe)
            print(recipe)
            
            do {
                try context.save()
            } catch{
                print("could not save recipe")
            }
            
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
    
}
