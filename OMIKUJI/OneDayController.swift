//
//  OneDayController.swift
//  OMIKUJI
//
//  Created by Ayami_Imai on 2016/02/10.
//  Copyright © 2016年 Ayami_Imai. All rights reserved.
//

import UIKit

class OneDayController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //        let targetViewController = self.storyboard!.instantiateViewControllerWithIdentifier("mikuji") as! UIViewController
        //        self.presentViewController( targetViewController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func returnButton(sender: AnyObject) {
        self.performSegueWithIdentifier("returnMenu", sender: nil)
    }
    
}
