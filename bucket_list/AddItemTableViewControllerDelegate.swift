//
//  AddItemTableViewControllerDelegate.swift
//  bucket_list
//
//  Created by Jaeson Booker on 3/15/17.
//  Copyright © 2017 Jaeson Booker. All rights reserved.
//

import Foundation

protocol AddItemTableViewControllerDelegate: class {
    func itemSaved(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?)
    func cancelButtonPressed(by controller: AddItemTableViewController)
}
