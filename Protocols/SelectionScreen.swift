//
//  SelectionScreen.swift
//  School with Cristina
//
//  Created by Admin on 16/10/2017.
//  Copyright © 2017 home. All rights reserved.
//

import UIKit


protocol SideSelectionDelegate {
    func didTapChoise(image:UIImage, name:String, color:UIColor)
}

class SelectionScreen: UIViewController {
    
    
    var selegationDelegate: SideSelectionDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

   
    @IBAction func moneyButtonAction(_ sender: Any) {
        
        selegationDelegate.didTapChoise(image: UIImage(named:"dragnea")!, name: "Livache Dragnea", color: .red)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func thinkActionButton(_ sender: Any) {
        
        selegationDelegate.didTapChoise(image: UIImage(named:"ciolos")!, name: "Dacian Ciolos", color: .blue)
        
        dismiss(animated: true, completion: nil)
        
    }
    

}
