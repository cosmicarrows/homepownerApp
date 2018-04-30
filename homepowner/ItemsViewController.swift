//
//  ItemsViewController.swift
//  homepowner
//
//  Created by Cosmic Arrows, LLC on 4/29/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import Foundation
import UIKit

class ItemsViewController: UITableViewController {
    
    //to give the controller access to the ItemStore
    //the ! means its an implicitly unwrapped optional meaning use this guy once and use the value anywhere you want
    var itemStore: ItemStore!
    
    
    // MARK: - Implement Required UITableViewDataSource Methods from the UITableViewDataSource Protocol.
    
    //UITableViewController subclasses already come conformed to UITableViewDataSoure and UITableViewDelegate Protocols just in case you were wondering why the protocol conformity isn't shown at the top of the ItemsViewController class.
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return itemStore.allItems.count
        case 1:
            return 0
        default:
            return 0
        }
        
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch section {
        case 0:
            return "List of Item Instances"
        case 1:
            return "List of Stolen Item Instances"
        default:
            return nil
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an instance of UITableViewCell, with default appearance
        let cell = UITableViewCell.init(style: .value1, reuseIdentifier: "UITableViewCell")
        
        // Set the text on the cell with the description of the item instance that is at the nth index of the allItems array, where n = row this cell will appear in on the tableview
        let item = itemStore.allItems[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$\(item.valueInDollars)"
        
        return cell
    }
    
}





