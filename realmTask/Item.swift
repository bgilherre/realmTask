//
//  Item.swift
//  realmTask
//
//  Created by Borja Gil Herrero on 19/12/2018.
//  Copyright © 2018 Alsis GHE. All rights reserved.
//
import RealmSwift
import Foundation

public class Item: Object {
    
    @objc dynamic var itemId: String = UUID().uuidString
    @objc dynamic var body: String = ""
    @objc dynamic var isDone: Bool = false
    @objc dynamic var timestamp: Date = Date()
    
    override public static func primaryKey() -> String? {
        return "itemId"
        
    }
    
}
