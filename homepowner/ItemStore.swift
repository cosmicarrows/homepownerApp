//
//  ItemStore.swift
//  homepowner
//
//  Created by Cosmic Arrows, LLC on 4/30/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//


//For this class, the ItemsViewController will call methods on ItemStore when it wants a new Item created, deleteed, etc.


import Foundation
//not too sure why our ItemStore class is importing UIKit because it is an abstract class which I don't think has or uses any views
import UIKit

//Also notice that we didn't inherit from NSObject in this class, I'm guessing we don't need to interact with the Obj C runttime environment...now this has me thinking about multiple threading because the NSObject reference doc
class ItemStore {
    
    //this variable will hold an array of Item objects that are instantiated
    var allItems = [Item]()
    
    func createItem() -> Item {
        let newItem = Item.init(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }
    
    
    //basically for demo purposes with this init method below
    init() {
        for _ in 0..<5 {
            createItem()
        }
    }
    
}
