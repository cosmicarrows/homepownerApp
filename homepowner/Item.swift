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
    
    //now we will create a convenience initializer as an optional helper for situations where we want to instantiate randomly generated Item instances
    convenience init(random: Bool = false) {
        //this convenience initializer has an argument called random which is set to false as the default value
        
        //now we will enter the logic in the event that the random argument is changed to true during instantiation
        if random {
            let adjectives = ["Odd", "Wild", "Tough"]
            let nouns = ["Red Tribe Bike", "Vegan Pizza", "Macbook Pro"]
            //since arrays are typcially integer based, we needed to cast adjectives.count to a UInt32 type in order to use its value within the arc4random_uniform method.
            var idx = arc4random_uniform(UInt32(adjectives.count))
            //now we're casting this value back into an Int to be used as an index for the adjectives array
            let randomAdjective = adjectives[Int(idx)]
            
            //now we'll re-use the idx variable to randomly select a noun from the nouns array
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            
            //now we'll concatenate the two randomly chosen terms into this randomName constant
            let randomName = "\(randomAdjective) \(randomNoun)"
            
            //now we'll create a random value for the valueInDollars property of the Item instance
            let randomValue = Int(arc4random_uniform(1000))
            //now we'll create a random serial number using UUID's
            let randomSerialNumber = UUID().uuidString.components(separatedBy: "-").first!
            
            //now to make this convenience initializer fully functional we'll need to call the designated initializer by saying self.init and fill in the parameters based on the values we just generated above.
            
            self.init(name: randomName, serialNumber: randomSerialNumber, valueInDollars: randomValue)
            
        }
        else {
            self.init(name: "", serialNumber: nil, valueInDollars: 0)
        }
    }
    
    
}


