//
//  Detail1ViewController.swift
//  School with Cristina
//
//  Created by Admin on 10/10/2017.
//  Copyright © 2017 home. All rights reserved.
//

import UIKit

class Detail1ViewController: UIViewController {

    @IBOutlet var imageViewOutlet: UIImageView!
    
    @IBOutlet var labelOutlet: UILabel!
    
    
    var videoFromDetailViewController: Video?
    
    
    func setUi()
    {
        imageViewOutlet.image = videoFromDetailViewController?.image
        labelOutlet.text = videoFromDetailViewController?.title
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        setUi()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
