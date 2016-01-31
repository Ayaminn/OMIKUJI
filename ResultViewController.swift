//
//  ResultViewController.swift
//  OMIKUJI
//
//  Created by Ayami_Imai on 2016/01/27.
//  Copyright © 2016年 Ayami_Imai. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var img01 :UIImage = UIImage(named:"古来.png")!
    var img02 :UIImage = UIImage(named:"古来2.png")!
    var img03 :UIImage = UIImage(named:"古来3.png")!
    
    var imgArray:[UIImage] = []
    
    @IBOutlet var resultView : UIImageView!
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
                imgArray = [img01,img02,img03]
        
                let ret = Int(arc4random_uniform(3))
        
                resultView.image = imgArray[ret]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
} 
