//
//  myColectionViewCell.swift
//  School with Cristina
//
//  Created by Admin on 24/10/2017.
//  Copyright © 2017 home. All rights reserved.
//

import UIKit

class myColectionViewCell: UICollectionViewCell {
    
    @IBOutlet var myImageView: UIImageView!
    
    
    
    func setImage(anImage:Images)
    {
        myImageView.image = anImage.image
        
    }
    
}
