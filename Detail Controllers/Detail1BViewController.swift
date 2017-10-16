//
//  Detail1BViewController.swift
//  School with Cristina
//
//  Created by Admin on 16/10/2017.
//  Copyright © 2017 home. All rights reserved.
//

import UIKit

class Detail1BViewController: UIViewController {

    
    @IBOutlet var imageViewOutlet: UIImageView!
    
    
    @IBOutlet var choseSideButtonOutlet: UIButton!
    
    
    @IBOutlet var cePartidTeReprezintaOutlet: UILabel!
    
    
    @IBAction func choseSideButtonAction(_ sender: Any) {
        
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SelectionScreen
        present(selectionVC, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

   

   
}
