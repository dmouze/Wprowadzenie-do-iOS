//
//  ViewController.swift
//  SplashScreen
//
//  Created by Matt on 22/11/2023.
//

import UIKit

class SplashScreenViewController: UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        UIView.animate(withDuration: 4, delay: 0, options: .curveEaseOut, animations: {
            
            self.img.image = UIImage(named: "apple")
            
            self.img.frame.size.width += 100
            self.img.frame.size.height += 100
        }, completion: nil)
        /* UIView.animate(withDuration: 1, delay: 0.5, options: [.autoreverse, .repeat], animations: {
         self.img.image = UIImage(named: "logo")
         self.img.frame.origin.y -= 50 })*/
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3){ self.performSegue(withIdentifier: "home", sender: nil)
        }
        
    }
}
