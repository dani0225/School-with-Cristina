//
//  mainVideoListScreen.swift
//  School with Cristina
//
//  Created by Admin on 10/10/2017.
//  Copyright © 2017 home. All rights reserved.
//

import UIKit

class mainVideoListScreen: UIViewController {

    var videosArray: [Video] = []
    
    let nameOfSegue1 = "mainToDetailScreen"
    
    let SegueToAppDelegate = "mainToAppDelegate"
    
    let segueToKeyboard = "keyBoardScreen1"
    
    @IBOutlet var tableViewOutlet: UITableView!
    
    
   

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videosArray = createArray()
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
        addNavBarImage()
        
       

        // Do any additional setup after loading the view.
    }
    
    func addNavBarImage()
    {
        let navController = navigationController!
        
        let image = #imageLiteral(resourceName: "teacher")
        let imageView = UIImageView(image: image)
        
        let bannerWidth = navController.navigationBar.frame.size.width
        let bannerHeight = navController.navigationBar.frame.size.height
        
         let bannerX = bannerWidth / 2 - image.size.width / 2
        let bannerY = bannerHeight / 2 - image.size.height / 2
        
        imageView.frame = CGRect(x:bannerX, y:bannerY, width:bannerWidth, height:bannerHeight)
        imageView.contentMode = .scaleAspectFit
        
        
        navigationItem.titleView = imageView
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == nameOfSegue1
        {
            let destVc = segue.destination as! Detail1ViewController
            destVc.videoFromDetailViewController = sender as? Video
        }
       else if segue.identifier == SegueToAppDelegate
        {
            let destVc = segue.destination as! appDelegateScreen1
            destVc.receiveDataFromMainSwiftFile = sender as? Video
        }
      
        
    }
    
    

    func createArray() -> [Video]
    {
        var tempVideos: [Video] = []
        
        let video1 = Video(image: #imageLiteral(resourceName: "protocols"), title: "Protocols")
        let video2 = Video(image: #imageLiteral(resourceName: "appDelegate"), title: "App")
        let video3 = Video(image: #imageLiteral(resourceName: "keyboard3"), title: "Keyboard")
        let video4 = Video(image: #imageLiteral(resourceName: "beginner-first-app"), title: "Your first App")
        let video5 = Video(image: #imageLiteral(resourceName: "beginner-first-app"), title: "Your firdsadsadast App")
        let video6 = Video(image: #imageLiteral(resourceName: "beginner-first-app"), title: "Your first App")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        tempVideos.append(video6)
        
        
       return tempVideos
    }
    
}



extension mainVideoListScreen: UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videosArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videosArray[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myVideoCell") as! myVideoTableViewCell
        
        cell.setVideo(aVideo: video)
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let video = videosArray[indexPath.row]
        
        
    //pt segue diferit if indexPath.row == 1 {performsegue .... bla bla}
        
        if indexPath.row  == 0
        {
          performSegue(withIdentifier: nameOfSegue1, sender: video)
        }
        
       if indexPath.row == 1
        {
            performSegue(withIdentifier: SegueToAppDelegate, sender: video)
        }
        if indexPath.row == 2
        {
            performSegue(withIdentifier: segueToKeyboard, sender: video)
        }
        
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
