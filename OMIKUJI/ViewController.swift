//
//  ViewController.swift
//  OMIKUJI
//
//  Created by Ayami_Imai on 2016/01/03.
//  Copyright (c) 2016年 Ayami_Imai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var answerLabel: UILabel!
    var ansewer: String!
    
    /*override func prefersStatusBarHidden() -> Bool {
        return true
    }*/

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
    
    
    
    //ここからシェイクの処理　↓
    //iOSシュミレーターでのシェイクは Command + Control + Z
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if event!.type == UIEventType.Motion && event!.subtype == UIEventSubtype.MotionShake {
            // シェイク動作始まり時の処理
        }
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if event!.type == UIEventType.Motion && event!.subtype == UIEventSubtype.MotionShake {
            

            performSegueWithIdentifier("result",sender: nil)
            
//            let resultViewController = self.storyboard!.instantiateViewControllerWithIdentifier( "result" ) as UIViewController
//            self.presentViewController( resultViewController, animated: true, completion: nil)

            // シェイク動作終了時の処理
//            var result: Int
//            result = Int (arc4random_uniform(5))
//            
//            switch result {
//            case 0:
//                ansewer = "大吉"
//                answerLabel.text = ansewer
//            case 1:
//                ansewer = "中吉"
//                answerLabel.text = ansewer
//            case 2:
//                ansewer = "小吉"
//                answerLabel.text = ansewer
//            case 3:
//                ansewer = "吉"
//                answerLabel.text = ansewer
//            case 4:
//                ansewer = "凶"
//                answerLabel.text = ansewer
//            default:
//                print("エラー")
//            }
        }
    }
}
    //ここまでシェイクの処理　↑
