//
//  WelcomeViewController.swift
//  realmTask
//
//  Created by Borja Gil Herrero on 19/12/2018.
//  Copyright © 2018 Alsis GHE. All rights reserved.
//
import RealmSwift
import UIKit
import Foundation

class WelcomeViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.title = "Welcome"
        
        if let _ = SyncUser.current {
            // We have already logged in here!
            self.navigationController?.pushViewController(ItemsViewController(), animated: true)
        } else {
            let alertController = UIAlertController(title: "Login to Realm Cloud", message: "Supply a nice nickname!", preferredStyle: .alert)
            
            alertController.addAction(UIAlertAction(title: "Login", style: .default, handler: { [unowned self]
                alert -> Void in
                let textField = alertController.textFields![0] as UITextField
                let creds = SyncCredentials.nickname(textField.text!, isAdmin: true)
                
                SyncUser.logIn(with: creds, server: Constants.AUTH_URL, onCompletion: { [weak self](user, err) in
                    if let _ = user {
                        self?.navigationController?.pushViewController(ItemsViewController(), animated: true)
                    } else if let error = err {
                        fatalError(error.localizedDescription)
                    }
                })
            }))
            alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            alertController.addTextField(configurationHandler: {(textField : UITextField!) -> Void in
                textField.placeholder = "A Name for your user"
            })
            self.present(alertController, animated: true, completion: nil)
        }
    }
}
