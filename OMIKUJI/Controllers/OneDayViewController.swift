//
//  OneDayController.swift
//  OMIKUJI
//
//  Created by Ayami_Imai on 2016/02/10.
//  Copyright © 2016年 Ayami_Imai. All rights reserved.
//

import UIKit

class OneDayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        //        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.694, green: 0.122, blue: 0.129, alpha: 1.0)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func returnMenu(sender: UIStoryboardSegue) {
       performSegueWithIdentifier("screenTransition", sender: self)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
