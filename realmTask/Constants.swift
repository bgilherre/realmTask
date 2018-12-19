//
//  Constants.swift
//  realmTask
//
//  Created by Borja Gil Herrero on 19/12/2018.
//  Copyright © 2018 Alsis GHE. All rights reserved.
//
import Foundation
import UIKit
struct Constants {
    // **** Realm Cloud Users:
    // **** Replace MY_INSTANCE_ADDRESS with the hostname of your cloud instance
    // **** e.g., "mycoolapp.us1.cloud.realm.io"
    // ****
    // ****
    // **** ROS On-Premises Users
    // **** Replace the AUTH_URL and REALM_URL strings with the fully qualified versions of
    // **** address of your ROS server, e.g.: "http://127.0.0.1:9080" and "realm://127.0.0.1:9080"
    static let MY_INSTANCE_ADDRESS:String = "realmtask.us1.cloud.realm.io" // <- update this    ​​
    //static let AUTH_URL  = URL(string: "https://\(MY_INSTANCE_ADDRESS)")!
    //static let REALM_URL = URL(string: "realms://\(MY_INSTANCE_ADDRESS)/ToDo")!
    static let AUTH_URL  = URL(string: "http://127.0.0.1:9080")!
    static let REALM_URL = URL(string: "realm://127.0.0.1:9080/ToDo")!
}
