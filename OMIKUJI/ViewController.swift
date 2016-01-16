//
//  ViewController.swift
//  OMIKUJI
//
//  Created by Ayami_Imai on 2016/01/03.
//  Copyright (c) 2016年 Ayami_Imai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
    
    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent) {
        if event.type == UIEventType.Motion && event.subtype == UIEventSubtype.MotionShake {
            // シェイク動作始まり時の処理
        }
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        if event.type == UIEventType.Motion && event.subtype == UIEventSubtype.MotionShake {
            // シェイク動作終了時の処理
        }
    }
    //ここまでシェイクの処理　↑
}

