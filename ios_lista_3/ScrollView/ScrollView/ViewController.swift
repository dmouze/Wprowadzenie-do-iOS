//
//  ViewController.swift
//  ScrollView
//
//  Created by Matt on 30/10/2023.
//

import UIKit
class ViewController: UIViewController {
@IBOutlet var titleLabel: UILabel!
    
@IBOutlet weak var imageView: UIImageView!
    
@IBOutlet weak var scrollView: UIScrollView!
    
@IBOutlet var textdescription: UITextView!
    
override func viewDidLoad() {
super.viewDidLoad()
    
    scrollView.contentSize = CGSize(width: 391, height: 2300)
// Do any additional setup after loading the view.
self.titleLabel.text = "iPhone 13 Pro Max"
self.textdescription.text="Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five "
    }
}

