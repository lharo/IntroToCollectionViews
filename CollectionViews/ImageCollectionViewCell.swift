//
//  ImageCollectionViewCell.swift
//  CollectionViews
//
//  Created by Luis Esteban Haro on 11/02/24.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
 
    func configureCell(image: Image) {
        descriptionLabel.text = image.imageTitle
        imageView.image = UIImage(named: image.imageName)
    }
}
