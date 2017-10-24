//
//  collViewssScreen1.swift
//  School with Cristina
//
//  Created by Admin on 24/10/2017.
//  Copyright © 2017 home. All rights reserved.
//

import UIKit

class Images
{
    var image:UIImage
    
    init(image:UIImage)
    {
        self.image = image
    }
    
}


class collViewssScreen1: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {


    var arrayOfImages:[Images] = []
    
  
    @IBOutlet var collectionViewOutlet: UICollectionView!
    
    
    
    func createArray() -> [Images]
    {
        var tempArray:[Images] = []
        
        let image1 = Images(image: #imageLiteral(resourceName: "ciolos"))
        let image2 = Images(image: #imageLiteral(resourceName: "dragnea"))
        let image3 = Images(image: #imageLiteral(resourceName: "dragnea"))
        let image4 = Images(image: #imageLiteral(resourceName: "dragnea"))
        let image5 = Images(image: #imageLiteral(resourceName: "dragnea"))
        let image6 = Images(image: #imageLiteral(resourceName: "dragnea"))
        let image7 = Images(image: #imageLiteral(resourceName: "dragnea"))
        let image8 = Images(image: #imageLiteral(resourceName: "dragnea"))
        let image9 = Images(image: #imageLiteral(resourceName: "dragnea"))
        
        tempArray.append(image1)
        tempArray.append(image2)
        tempArray.append(image3)
        tempArray.append(image4)
        tempArray.append(image5)
        tempArray.append(image6)
        tempArray.append(image7)
        tempArray.append(image8)
        tempArray.append(image9)
        
        return tempArray
        
    }
    
    
    
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        arrayOfImages = createArray()
        
        let screenSize = UIScreen.main.bounds.width/3 - 3
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(20, 0, 10, 0)
        layout.itemSize = CGSize(width: screenSize, height: screenSize)
        
        layout.minimumInteritemSpacing = 3
        layout.minimumLineSpacing = 3
        
        collectionViewOutlet.collectionViewLayout = layout
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myImages = arrayOfImages[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! myColectionViewCell
        cell.setImage(anImage: myImages)
        
        return cell
        
    }

}
