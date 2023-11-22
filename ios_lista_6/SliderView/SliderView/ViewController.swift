//
//  ViewController.swift
//  SliderView
//
//  Created by Matt on 22/11/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var CollectionView: UICollectionView!
    
    let imgArr = [UIImage(named: "image1"),UIImage(named: "image2"), UIImage(named: "image3"), UIImage(named: "image4"),
        UIImage(named: "image5"),]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
}

extension ViewController : UICollectionViewDataSource, UICollectionViewDelegate{

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return imgArr.count
        
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath:IndexPath) -> UICollectionViewCell {
        
        let cell = CollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! DataCollectionCollectionViewCell
        
        cell.img.image = imgArr[indexPath.row]
        
        return cell
        
    }

}

extension ViewController:UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
                        
                        UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
                        
                        UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = collectionView.frame.size
        
        return CGSize(width: size.width, height: size.height)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
                        
                        UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0.0
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
                        
                        UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
    
    {
        
        return 0.0
        
    }
    
}

