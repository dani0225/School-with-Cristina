//
//  appDelegateScreen1.swift
//  School with Cristina
//
//  Created by Admin on 17/10/2017.
//  Copyright © 2017 home. All rights reserved.
//

import UIKit

class appDelegateScreen1: UIViewController {

    
    @IBOutlet var uiImageOutlet: UIImageView!
    
    
    @IBOutlet var labelOutlet: UILabel!
    
    
    
    var receiveDataFromMainSwiftFile: Video?
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
     
    }

    
    
    func setUI()
    {
        uiImageOutlet.image = receiveDataFromMainSwiftFile?.image
        
        labelOutlet.text = receiveDataFromMainSwiftFile?.title
    }
    
    
}



