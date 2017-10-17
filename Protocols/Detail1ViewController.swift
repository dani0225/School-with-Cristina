//
//  Detail1ViewController.swift
//  School with Cristina
//
//  Created by Admin on 10/10/2017.
//  Copyright © 2017 home. All rights reserved.
//

import UIKit
import SafariServices


class Detail1ViewController: UIViewController {

    @IBOutlet var imageViewOutlet: UIImageView!
    
    @IBOutlet var labelOutlet: UILabel!
    
    @IBOutlet var characterLabel: UIImageView!
    
    @IBOutlet var startButtonOutlet: UIButton!
    
    @IBOutlet var externalButtonOutlet: UIButton!
    
    @IBOutlet var appStoreButtonOutlet: UIButton!
    
    @IBOutlet var verticalLabel: UILabel!
    
    
    
    //Butoane
    
    
    @IBAction func appStoreButtonAction(_ sender: Any) {
    }
    
    
    @IBAction func startButton(_ sender: Any) {
        
        startButtonOutlet.isHidden = true
        
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(changeTextAndCharacter), userInfo: nil, repeats: false)
    }
    
    @IBAction func openSafari(_ sender: Any) {
        
        let videoUrl = URL(string: "http://swift.sandbox.bluemix.net/#/repl/59de151b2ddf2c2d9dc37d14")
        let safariVc = SFSafariViewController(url: videoUrl!)
        present(safariVc, animated: true, completion: nil)
    }
    
    
    
    
    
    var videoFromDetailViewController: Video?
    
    var timer = Timer()
    
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        setUi()
        // Do any additional setup after loading the view.
       labelOutlet.isHidden = true
       externalButtonOutlet.isHidden = true
        appStoreButtonOutlet.isHidden = true
        verticalLabel.numberOfLines = 0
        verticalLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   //FUNCTII !!!
    
    func setUi()
    {
        imageViewOutlet.image = videoFromDetailViewController?.image
        verticalLabel.text = videoFromDetailViewController?.title
        
    }
    
    
    @objc func changeTextAndCharacter()
    {
        characterLabel.image = UIImage(named:"teacher")
        startButtonOutlet.setTitle("Cristina the Wise", for: .normal)
        startButtonOutlet.isHidden = false
        labelOutlet.isHidden = false
        labelOutlet.text = "Ia sa vedem ce ai mai invatat. Data trecuta ai fost cam varzuta"
        labelOutlet.animate(newText: labelOutlet.text ?? "Error no text", characterDelay: 0.05)
        
        
        timer = Timer.scheduledTimer(timeInterval: 7, target: self, selector: #selector(secondDialogue), userInfo: nil, repeats: false)
        
    }
    
    @objc func secondDialogue()
    {
        characterLabel.image = UIImage(named: "student")
        startButtonOutlet.setTitle("Daniel the IOS Wannabe", for: .normal)
        labelOutlet.text = "..."
        labelOutlet.text = "Am invatat Protocols."
        labelOutlet.animate(newText: labelOutlet.text ?? "Error no text", characterDelay: 0.1)
        
         timer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(thirdDialogue), userInfo: nil, repeats: false)
        
    }
    
    @objc func thirdDialogue()
    {
        
        labelOutlet.text = "..."
        labelOutlet.text = "Un protocol defineste un sablon de proprietati si metode. Protocolul poate fi adoptat de o clasa, structura sau de un enum. Daca un element satisface cerintele unui protocol putem spune ca acesta se conformeaza protocolului"
        labelOutlet.animate(newText: labelOutlet.text ?? "Error no text", characterDelay: 0.04)
        
        timer = Timer.scheduledTimer(timeInterval: 12, target: self, selector: #selector(forthDialogue), userInfo: nil, repeats: false)
        
    }
    
    @objc func forthDialogue()
    {
        characterLabel.image = UIImage(named:"teacher")
        startButtonOutlet.setTitle("Cristina the Wise", for: .normal)
        labelOutlet.text = "..."
        labelOutlet.text = "Poti sa imi dai un exemplu?"
        labelOutlet.animate(newText: labelOutlet.text ?? "Error no text", characterDelay: 0.1)
        
        timer = Timer.scheduledTimer(timeInterval: 4.5, target: self, selector: #selector(fifthDialogue), userInfo: nil, repeats: false)
        
    }
    @objc func fifthDialogue()
    {
        characterLabel.image = UIImage(named:"student")
        startButtonOutlet.setTitle("Daniel the IOS wannabe", for: .normal)
        labelOutlet.text = "..."
        labelOutlet.text = "Sigur, da click pe butonul de mai sus pentru un exemplu de cod, iar apoi pe Icon-ul de mai jos pentru o mini aplicatie."
        labelOutlet.animate(newText: labelOutlet.text ?? "Error no text", characterDelay: 0.05)
        externalButtonOutlet.isHidden = false
        appStoreButtonOutlet.isHidden = false
        
    }
    
    
}



extension UILabel {
    
    func animate(newText: String, characterDelay: TimeInterval) {
        
        DispatchQueue.main.async {
            
            self.text = ""
            
            for (index, character) in newText.characters.enumerated() {
                DispatchQueue.main.asyncAfter(deadline: .now() + characterDelay * Double(index)) {
                    self.text?.append(character)
                }
            }
        }
    }
    
}
