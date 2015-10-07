//
//  AddProductViewController.swift
//  Wishlist
//
//  Created by Юрий Михайлов on 07.10.15.
//  Copyright © 2015 Юрий Михайлов. All rights reserved.
//

import UIKit
import CoreData

class AddProductViewController: UIViewController {
    
    @IBOutlet weak var productLabel : UITextField!
    @IBOutlet weak var storeLabel   : UITextField!
    @IBOutlet weak var imageView    : UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func cancelTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func saveTapped(sender: AnyObject) {
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        
        let product = NSEntityDescription.insertNewObjectForEntityForName("Product", inManagedObjectContext: context) as! Product
        
        product.title = self.productLabel.text
        product.store = self.storeLabel.text
        product.image = UIImageJPEGRepresentation(self.imageView.image!, 1)
        
        do {
            try context.save()
        } catch _ {
            
        }
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
