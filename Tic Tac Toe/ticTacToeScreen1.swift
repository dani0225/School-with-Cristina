//
//  ticTacToeScreen1.swift
//  School with Cristina
//
//  Created by Admin on 02/11/2017.
//  Copyright © 2017 home. All rights reserved.
//

import UIKit

class ticTacToeScreen1: UIViewController {

  
    @IBOutlet var restartButtonOutlet: UIButton!
    
    
    @IBOutlet var imageView1: UIImageView!
    
    @IBOutlet var imageVIew2: UIImageView!
    
    @IBOutlet var imageVIew3: UIImageView!
    
    @IBOutlet var imageVIew4: UIImageView!
    
    @IBOutlet var imageVIew5: UIImageView!
    
    
    @IBOutlet var imageVIew6: UIImageView!
    
    @IBOutlet var imageVIew7: UIImageView!
    
    @IBOutlet var imageVIew8: UIImageView!
    

    @IBOutlet var imageVIew9: UIImageView!
    
    
    @IBOutlet var button1: UIButton!
    
    @IBOutlet var button2: UIButton!
    
    @IBOutlet var button3: UIButton!
    
    @IBOutlet var button4: UIButton!
    
    @IBOutlet var button5: UIButton!
    
    @IBOutlet var button6: UIButton!
    
    @IBOutlet var button7: UIButton!
    
    @IBOutlet var button8: UIButton!
    
    @IBOutlet var button9: UIButton!
    
    
    @IBAction func resetButton(_ sender: Any) {
        reset()
    }
    
    @IBOutlet var userMessage: UILabel!
    
    var plays = Dictionary<Int,Int>()
    var done = false
    var aiDeciding = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    
    
    @IBAction func buttonClicked(_ sender: UIButton)
    {
        userMessage.isHidden = true
        
        if plays[sender.tag] == nil && !aiDeciding && !done
        {
      setImageForSpot(spot: (sender as AnyObject).tag, player:1)
        }
        checkForWin()
        aiTurn()
    }
    
    func checkForWin()
    {
        let whoWoned = ["I":0,"you":1]
        for (key,value) in whoWoned
        {
          if (plays[7] == value && plays[8] == value && plays[9] == value) ||
             (plays[4] == value && plays[5] == value && plays[6] == value) ||
             (plays[1] == value && plays[2] == value && plays[3] == value) ||
             (plays[1] == value && plays[5] == value && plays[9] == value) ||
             (plays[2] == value && plays[5] == value && plays[8] == value) ||
             (plays[1] == value && plays[4] == value && plays[7] == value) ||
             (plays[3] == value && plays[6] == value && plays[9] == value) ||
             (plays[3] == value && plays[5] == value && plays[7] == value) 
            
            {
                    userMessage.isHidden = false
                userMessage.text = "Looks like \(key) won!"
                restartButtonOutlet.isHidden = false
                done = true
            }
            
        }
        }
    
    func reset()
    {
        plays = [:]
        imageView1.image = nil
        imageVIew2.image = nil
        imageVIew3.image = nil
        imageVIew4.image = nil
        imageVIew5.image = nil
        imageVIew6.image = nil
        imageVIew7.image = nil
        imageVIew8.image = nil
        imageVIew9.image = nil
        
        done = false
        restartButtonOutlet.isHidden = true
        userMessage.isHidden = true
        
    }
    
    func aiTurn()
    {
        
    }

    func setImageForSpot(spot:Int, player:Int)
    {
        var playerMark = player == 1 ? "ex" : "zero"
        
        
        plays[spot] = player
        switch spot
        {
        case 1:
            imageView1.image = UIImage(named: playerMark)
        case 2:
            imageVIew2.image = UIImage(named: playerMark)
        case 3:
            imageVIew3.image = UIImage(named: playerMark)
        case 4:
            imageVIew4.image = UIImage(named: playerMark)
        case 5:
            imageVIew5.image = UIImage(named: playerMark)
        case 6:
            imageVIew6.image = UIImage(named: playerMark)
        case 7:
            imageVIew7.image = UIImage(named: playerMark)
        case 8:
            imageVIew8.image = UIImage(named: playerMark)
        case 9:
            imageVIew9.image = UIImage(named: playerMark)
            
        default:
             imageVIew9.image = UIImage(named: playerMark)
        }
    }
}
    

