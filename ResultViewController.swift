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
    
    var oldImgNameArray:[String] = ["古来.png","古来2.png","古来3.png", "古来4.png", "古来5.png", "古来6.png", "古来7.png", "古来8.png", "古来9.png", "古来10.png", "古来11.png", "古来12.png", "古来13.png", "古来14.png", "古来15.png", "古来16.png", "古来17.png", "古来18.png", "古来19.png", "古来20.png", "古来21.png", "古来22.png", "古来23.png", "古来24.png", "古来25.png", "古来26.png", "古来27.png", "古来28.png", "古来29.png", "古来30.png", "古来31.png", "古来32.png", "古来33.png", "古来34.png", "古来35.png", "古来36.png", "古来37.png", "古来38.png", "古来39.png", "古来40.png", "古来41.png", "古来42.png", "古来43.png", "古来44.png", "古来45.png", "古来46.png", "古来47.png", "古来48.png", "古来49.png", "古来50.png", "古来51.png", "古来52.png", "古来53.png", "古来54.png", "古来55.png", "古来56.png", "古来57.png", "古来58.png", "古来59.png", "古来60.png", "古来61.png", "古来62.png", "古来63.png", "古来64.png", "古来65.png", "古来66.png", "古来67.png", "古来68.png", "古来69.png", "古来70.png", "古来71.png", "古来72.png", "古来73.png", "古来74.png", "古来75.png", "古来76.png", "古来77.png", "古来78.png", "古来79.png", "古来80.png", "古来81.png", "古来82.png", "古来83.png", "古来84.png", "古来85.png", "古来86.png", "古来87.png", "古来88.png", "古来89.png", "古来90.png", "古来91.png", "古来92.png", "古来93.png", "古来94.png", "古来95.png", "古来96.png", "古来97.png", "古来98.png", "古来99.png", "古来100"]
    
    var presentImgNameArray: [String] = ["現代.png","現代2.png","現代3.png", "現代4.png", "現代5.png", "現代6.png", "現代7.png", "現代8.png", "現代9.png", "現代10.png", "現代11.png", "現代12.png", "現代13.png", "現代14.png", "現代15.png", "現代16.png", "現代17.png", "現代18.png", "現代19.png", "現代20.png", "現代21.png", "現代22.png", "現代23.png", "現代24.png", "現代25.png", "現代26.png", "現代27.png", "現代28.png", "現代29.png", "現代30.png", "現代31.png", "現代32.png", "現代33.png", "現代34.png", "現代35.png", "現代36.png", "現代37.png", "現代38.png", "現代39.png", "現代40.png", "現代41.png", "現代42.png", "現代43.png", "現代44.png", "現代45.png", "現代46.png", "現代47.png", "現代48.png", "現代49.png", "現代50.png", "現代51.png", "現代52.png", "現代53.png", "現代54.png", "現代55.png", "現代56.png", "現代57.png", "現代58.png", "現代59.png", "現代60.png", "現代61.png", "現代62.png", "現代63.png", "現代64.png", "現代65.png", "現代66.png", "現代67.png", "現代68.png", "現代69.png", "現代70.png", "現代71.png", "現代72.png", "現代73.png", "現代74.png", "現代75.png", "現代76.png", "現代77.png", "現代78.png", "現代79.png", "現代80.png", "現代81.png", "現代82.png", "現代83.png", "現代84.png", "現代85.png", "現代86.png", "現代87.png", "現代88.png", "現代89.png", "現代90.png", "現代91.png", "現代92.png", "現代93.png", "現代94.png", "現代95.png", "現代96.png", "現代97.png", "現代98.png", "現代99.png", "現代100"]
    
    var aohaRoidImgNameArray: [String] = ["青春１.png", "青春２.png", "青春３.png", "青春４.png", "青春５.png", "青春６.png", "青春７.png", "青春８.png", "青春９.png", "青春１０.png", "青春１１.png", "青春１２.png", "青春１３.png", "青春１４.png", "青春１５.png", "青春１６.png", "青春１７.png", "青春１８.png", "青春１９.png", "青春２０.png", "青春２１.png", "青春２２.png", "青春２３.png", "青春２４.png", "青春２５.png", "青春２６.png", "青春２７.png", "青春２８.png", "青春２９.png", "青春３０.png"]
    @IBOutlet var resultView : UIImageView!
    
    var myComposeView : SLComposeViewController!
    
       @IBAction func save(sender:UIButton) {
            UIImageWriteToSavedPhotosAlbum(resultView.image!, nil, nil, nil)
       }
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
        let appDel = UIApplication.sharedApplication().delegate as! AppDelegate
        let num = appDel.num
        
        let ret = Int(arc4random_uniform(3))
        
        switch(num){
            case 1:
                resultView.image = UIImage(named: oldImgNameArray[ret])
                break
            case 2:
                resultView.image = UIImage(named: presentImgNameArray[ret])
                break
            case 3:
                resultView.image = UIImage(named: aohaRoidImgNameArray[ret])
                break
            default:
                break
        }
        
        
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
    @IBAction func returnHomeButton(sender: AnyObject) {
        performSegueWithIdentifier("returnHome", sender: self)
    }

    func saveButton(sender: UIButton) {
        UIImageWriteToSavedPhotosAlbum(resultView.image!, self, "image:didFinishSavingWithError:contextInfo:", nil)
    }
    
} 
