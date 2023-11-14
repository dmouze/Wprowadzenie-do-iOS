//
//  ViewController.swift
//  AlertController
//
//  Created by Matt on 14/11/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var clickMe: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(_ sender: Any) {
        /* Alert z wykorzystaniem Action Sheet */
        let alert = UIAlertController(title: "Error", message: "Co chcesz zrobić?", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Approve", style: .default, handler: { (_) in
            print("User click Approve button")
        }))
        
        alert.addAction(UIAlertAction(title: "Edit", style: .default, handler: { (_) in
            print("User click Edit button")
        }))
        
        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { (_) in
            print("User click Delete button")
        }))
        
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: { (_) in
            print("User click Dismiss button")
        }))
        
        self.present(alert, animated: true, completion: {
            print("completion block")
        })
    }

//    /* Alert */
//    let alert = UIAlertController(title: "Uwaga", message: "Jesteś obiektem moich paczań.", preferredStyle: UIAlertController.Style.alert)
//    
//    // add an action (button)
//    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//    
//    // show the alert
//    self.present(alert, animated: true, completion: nil)
//
//    // Destructive button
//    let destructiveAlert = UIAlertController(title: "Sign out?", message: "You can always access your content by signing back in", preferredStyle: UIAlertController.Style.alert)
//
//    destructiveAlert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: { _ in
//        // Cancel Action
//    }))
//
//    destructiveAlert.addAction(UIAlertAction(title: "Sign out", style: UIAlertAction.Style.destructive, handler: {(_: UIAlertAction!) in
//        // Sign out action
//    }))
//
//    self.present(destructiveAlert, animated: true, completion: nil)
}
