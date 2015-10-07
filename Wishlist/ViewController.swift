    //
//  ViewController.swift
//  Wishlist
//
//  Created by Юрий Михайлов on 07.10.15.
//  Copyright © 2015 Юрий Михайлов. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    var products : [Product] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    override func viewWillAppear(animated: Bool) {
        let request = NSFetchRequest(entityName: "Product")
        
        var results : [AnyObject]?
        
        do {
            results = try self.context.executeFetchRequest(request)
        } catch _ {
            results = nil
        }
        
        if results != nil {
            self.products = results as! [Product]!
        }
        
        self.tableView.reloadData()
    }
    
    func createSampleProduct() {
        let product = NSEntityDescription.insertNewObjectForEntityForName("Product", inManagedObjectContext: self.context) as! Product
        
        product.title = "Macbook Pro mid 2015"
        product.store = "Apple"
        product.image = UIImageJPEGRepresentation(UIImage(named: "macbook_pro.jpg")!, 1)
        
        do {
            try self.context.save()
        } catch _ {
            
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let product = self.products[indexPath.row]
        
        let cell = UITableViewCell()
        cell.textLabel!.text = product.title
        
        if product.image != nil {
            cell.imageView!.image = UIImage(data: product.image!)
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }

}
