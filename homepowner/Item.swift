//
//  Item.swift
//  homepowner
//
//  Created by Cosmic Arrows, LLC on 4/29/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import Foundation
//I wonder why we're doing this by importing the UIKit foundation since an Item object doesn't have any UI properties...
import UIKit

class Item: NSObject {
    
    var name: String
    var valueInDollars: Int
    //the serialNumber property is an optional string because all your items may not have a visible serial number...
    var serialNumber: String?
    //we're making the dateCreated property a constant because it will never change...NEVER CHANGE!!
    let dateCreated: Date
    
    init(name: String, serialNumber: String?, valueInDollars: Int) {
        
        //now we are going to set the properties using the word self in order to refer each instance of this type object
        //also by using the word self, we are distinguising the property from the argument in the init parameters
        self.name = name
        self.serialNumber = serialNumber
        self.valueInDollars = valueInDollars
        self.dateCreated = Date()
        
        //we have to include super.init because the Item object inherits from NSObject
        super.init()
    }
    
    
}


