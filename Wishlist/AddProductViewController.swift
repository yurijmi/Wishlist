//
//  AddProductViewController.swift
//  Wishlist
//
//  Created by Юрий Михайлов on 07.10.15.
//  Copyright © 2015 Юрий Михайлов. All rights reserved.
//

import UIKit

class AddProductViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func cancelTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func saveTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
