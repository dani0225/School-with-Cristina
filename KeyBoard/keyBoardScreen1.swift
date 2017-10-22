//
//  keyBoardScreen1.swift
//  School with Cristina
//
//  Created by Admin on 21/10/2017.
//  Copyright © 2017 home. All rights reserved.
//

import UIKit

class keyBoardScreen1: UIViewController, UITextFieldDelegate {

  
    
    @IBOutlet var userNameOutlet: UITextField!
    
    @IBOutlet var emailOutlet: UITextField!
    
    @IBOutlet var mobileNumberOutlet: UITextField!
    
    @IBOutlet var passwordOutlet: UITextField!
    
  
    
    var textFieldOutlets = [UITextField]()
    
    func addAllTextFieldOutletsInOneArray()
    {
        textFieldOutlets.append(userNameOutlet)
        textFieldOutlets.append(emailOutlet)
        textFieldOutlets.append(mobileNumberOutlet)
        textFieldOutlets.append(passwordOutlet)
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        addAllTextFieldOutletsInOneArray()
       

        for i in textFieldOutlets
        {
            i.delegate = self
        }
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardScreen1.keyboardWillShow(sender:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardScreen1.keyboardWillHide(sender:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @objc func keyboardWillShow(sender: NSNotification) {
        if userNameOutlet.isEditing || passwordOutlet.isEditing
        {
        self.view.frame.origin.y = -210 // Move view 150 points upward
        }
    }
        
    
    @objc func keyboardWillHide(sender: NSNotification) {
        if userNameOutlet.isEditing || passwordOutlet.isEditing {
        self.view.frame.origin.y = 0 // Move view to original position
        }
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        for i in textFieldOutlets
        {
            i.resignFirstResponder()
        }
        
        return true
    }
    
    
    
    var activeField: UITextField?

    
    
    
    
}



