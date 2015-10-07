//
//  ShowProductViewController.swift
//  Wishlist
//
//  Created by Юрий Михайлов on 07.10.15.
//  Copyright © 2015 Юрий Михайлов. All rights reserved.
//

import UIKit

class ShowProductViewController: UIViewController {

    @IBOutlet weak var productLabel : UILabel!
    @IBOutlet weak var storeLabel   : UILabel!
    @IBOutlet weak var imageView    : UIImageView!
    
    var product : Product? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.productLabel.text = self.product!.title
        self.storeLabel.text   = self.product!.store
        self.imageView.image   = UIImage(data: self.product!.image!)
    }
    
}
