//
//  ResultViewController.swift
//  OMIKUJI
//
//  Created by Ayami_Imai on 2016/01/27.
//  Copyright © 2016年 Ayami_Imai. All rights reserved.
//

import UIKit
import Social

class ResultViewController: UIViewController {
    
    var img01 :UIImage = UIImage(named:"古来.png")!
  
    var img02 :UIImage = UIImage(named:"古来2.png")!
    var img03 :UIImage = UIImage(named:"古来3.png")!
    
    var imgArray:[UIImage] = []
    
    @IBOutlet var resultView : UIImageView!
    
    var myComposeView : SLComposeViewController!
    
//    @IBAction func save(sender:UIButton) {
//        UIImageWriteToSavedPhotosAlbum(resultView.image!, self, "image:didFinishSavingWithError:contextInfo:", nil)
//    }
//    
//    func image(image: UIImage, didFinishSavingWithError error: NSError!, contextInfo: UnsafeMutablePointer<Void>) {
//        if error != nil {
//            //プライバシー設定不許可など書き込み失敗時は -3310 (ALAssetsLibraryDataUnavailableError)
//            print(error.code)
//        }
//    }
    
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
                imgArray = [img01,img02,img03]
        
                let ret = Int(arc4random_uniform(3))
        
                resultView.image = imgArray[ret]
        
        NSTimer.scheduledTimerWithTimeInterval(100, target: self, selector: "updateDateLabel", userInfo: nil, repeats: true)
        
        //86400
    }
    
    func updateDateLabel(){
        //let now = NSDate()
        let topViewController = self.storyboard!.instantiateViewControllerWithIdentifier( "back" ) as UIViewController
        self.presentViewController( topViewController, animated: true, completion: nil)
        
    }
    
    var dateFormatter: NSDateFormatter{
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
        return formatter
    }
//    
//    var saveImage: UIImage?
//    
//    var frame:CGRect?
//    
//    func screenShot() -> UIImage{
//        // スクリーンショットの取得開始
//        UIGraphicsBeginImageContextWithOptions(resultView.frame.size, true, 1.0)
//        
//        // ImageViewの座標取得
//        let x:CGFloat = self.resultView.bounds.origin.x
//        let y:CGFloat = self.resultView.bounds.origin.y
//        
//        // ImageViewの幅と高さを取得
//        let width:CGFloat = self.resultView.bounds.width;
//        let height:CGFloat = self.resultView.bounds.height
//        
//        // 上記よりフレームを生成する
//        frame = CGRect(x: x, y: y, width: width, height: height)
//        
//        // frameのサイズと場所で描画
//        resultView.drawViewHierarchyInRect(frame!, afterScreenUpdates: true)
//        
//        // 描画したスクリーンショットを取得する
//        saveImage = UIGraphicsGetImageFromCurrentImageContext()
//        
//        // 取得終了
//        UIGraphicsEndImageContext()
//        
//        // スクショを返す
//        return saveImage!
//    }
//    
//    @IBAction func save(sender:UIButton) {
//        UIImageWriteToSavedPhotosAlbum(self.screenShot(), self, "image:didFinishSavingWithError:contextInfo:", nil)
//    }
//    
//    
//    //保存処理のイベント
//    func image(image: UIImage, didFinishSavingWithError error: NSError!, contextInfo: UnsafeMutablePointer<Void>) {
//        if error != nil {
//            //エラーの時
//        }
//    }
    
    func onClickTweetButton(sender: UIButton) {
//        
//        let text = "御神籤アプリをプレイしたよ！結果は…?!" : resultView.image
//        
//        let composeViewController: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)!
//        composeViewController.setInitialText(text)
//        
//        self.presentViewController(composeViewController, animated: true, completion: nil)
        myComposeView = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
         myComposeView.setInitialText("御神籤アプリをプレイしたよ！ By Test Users")
        myComposeView.addImage(resultView.image)
        self.presentViewController(myComposeView, animated: true, completion: nil)
    }
    
    func save(sender: UIButton) {
        UIImageWriteToSavedPhotosAlbum(resultView.image!, self, "image:didFinishSavingWithError:contextInfo:", nil)

    }
    
} 
