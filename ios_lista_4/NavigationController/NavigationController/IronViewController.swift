//
//  IronViewController.swift
//  NavigationController
//
//  Created by Matt on 03/11/2023.
//

import UIKit

class IronViewController: UIViewController {
    
    var counter = 0
    
    @IBAction func incrementCounter(_ sender: UIButton) {
        counter += 1
        
        sender.setTitle(String(counter), for: .normal)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowCounterSegue",
           
            let destinationVC = segue.destination as? MaroonViewController {
            
            destinationVC.numberToDisplay = counter
            
        }
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        title = "Iron View"
        
        // Do any additional setup after loading the view.
        
    }
    
}
