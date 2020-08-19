//
//  ModelController.swift
//  PrivateYelp
//
//  Created by Kelson Hartle on 8/19/20.
//  Copyright © 2020 Sean Kelson. All rights reserved.
//

import Foundation
import CoreData

class ModelController {
    
    @discardableResult func oneTimeCreateUser(name: String, identifier: UUID = UUID()) -> User {
        
        let newUser = User(name: name)
        
        CoreDataStack.shared.saveToPersistentStore()
        
        print(newUser)
        return newUser
    }
    
    @discardableResult func createReview(overallRating: Double, dirtyBathrooms: Bool, fineDining: Bool, goodForDates: Bool, itemPhoto: Data, menuItem: String, noKids: Bool, reviewNotes: String, smallSpace: Bool, restauraunt: Restaurant, user: User ) -> Review {
        
        let newReview = Review(overallRating: overallRating,
            itemPhoto: itemPhoto,
            menuItem: menuItem,
            reviewNotes: reviewNotes,
            smallSpace: smallSpace,
            for: restauraunt,
            from: user)
        CoreDataStack.shared.saveToPersistentStore()
        
        print(newReview)
        return newReview
    }
}