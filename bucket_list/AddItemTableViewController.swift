//
//  AddItemTableViewController.swift
//  bucket_list
//
//  Created by Jaeson Booker on 3/15/17.
//  Copyright © 2017 Jaeson Booker. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {
    
    weak var delegate: AddItemTableViewControllerDelegate?
    var item: String?
    var indexPath: NSIndexPath?
    

    @IBOutlet weak var ItemTextField: UITextField!
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
        print("You have been damned!")
    }
    
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        let text = ItemTextField.text!
        delegate?.itemSaved(by: self, with: text, at: indexPath)
        print("You have been saved, my son")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        ItemTextField.text = item
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

}
