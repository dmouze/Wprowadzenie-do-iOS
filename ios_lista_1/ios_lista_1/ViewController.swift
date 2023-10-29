//
//  ViewController.swift
//  ios_lista_1
//
//  Created by Matt on 29/10/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(sender: UIButton) {
        let alertController = UIAlertController(title: "Witaj w naszej apce", message: "Cześć to ja!", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
}

