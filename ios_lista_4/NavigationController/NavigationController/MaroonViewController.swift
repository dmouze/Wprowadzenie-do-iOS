//
//  MaroonViewController.swift
//  NavigationController
//
//  Created by Matt on 03/11/2023.
//

import UIKit

class MaroonViewController: UIViewController { var numberToDisplay = 0

    @IBOutlet weak var counterLab: UILabel!
    
    override func viewWillAppear(_ animated: Bool) { super.viewWillAppear(animated)

        counterLab.text = "The counter was tapped \(numberToDisplay) times." }

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        title = "Maroon View"
        // Do any additional setup after loading the view.
        
    }
}
