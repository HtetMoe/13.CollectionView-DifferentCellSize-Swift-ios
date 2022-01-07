//
//  ViewController.swift
//  CV-customLayout
//  Link >> https://www.raywenderlich.com/4829472-uicollectionview-custom-layout-tutorial-pinterest
//  Created by Htet Moe Phyu on 07/01/2022.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var itemCollectionView: UICollectionView!
    let photos : [UIImageView] = [
        UIImageView(image: UIImage(named: "img6")),
        UIImageView(image: UIImage(named: "img7")),
        UIImageView(image: UIImage(named: "img1")),
        UIImageView(image: UIImage(named: "img3")),
        UIImageView(image: UIImage(named: "img2")),
        UIImageView(image: UIImage(named: "img1")),
        UIImageView(image: UIImage(named: "img4")),
        UIImageView(image: UIImage(named: "img5"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let layout = itemCollectionView?.collectionViewLayout as? PinterestLayout {
            layout.delegate = self
        }
        itemCollectionView.register(UINib(nibName: "CollectionViewCell", bundle: nibBundle), forCellWithReuseIdentifier: "itemCell")
    }
}

extension ViewController : PinterestLayoutDelegate{
    func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat {
        return photos[indexPath.item].image!.size.height
    }
}

extension ViewController : UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as! CollectionViewCell
        
        cell.itemImage.image = photos[indexPath.row].image
        cell.title.text      = "Item \(indexPath.row + 1)"
        cell.itemCost.text   = "$ 28"
        
        cell.layer.borderColor  = UIColor.black.cgColor
        cell.layer.borderWidth  = 0.19
        cell.layer.cornerRadius = 4
        
        return cell
    }
}

