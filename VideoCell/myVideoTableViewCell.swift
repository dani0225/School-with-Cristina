//
//  myVideoTableViewCell.swift
//  School with Cristina
//
//  Created by Admin on 10/10/2017.
//  Copyright © 2017 home. All rights reserved.
//

import UIKit





class myVideoTableViewCell: UITableViewCell {


    @IBOutlet var videoImageView: UIImageView!
    
    @IBOutlet var videoTitleLabel: UILabel!
    
    
    
    
    func setVideo(aVideo:Video)
    {
        videoImageView.image = aVideo.image
        videoTitleLabel.text = aVideo.title
    }
    
    
    
    
    

}
