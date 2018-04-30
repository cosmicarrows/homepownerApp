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
    var itemStore: ItemStore!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return itemStore.allItems.count
        case 1:
            return 2
        default:
            print("still working on this logical decision if a switch statement does what we need in order to have two sections")
            return 8
            
        }
    }
    
}
