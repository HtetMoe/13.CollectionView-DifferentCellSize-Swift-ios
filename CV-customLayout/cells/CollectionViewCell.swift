//
//  CollectionViewCell.swift
//  CV-customLayout
//
//  Created by Htet Moe Phyu on 07/01/2022.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemCost: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
