//
//  MenuViewController.swift
//  OMIKUJI
//
//  Created by Miki Takahashi on 2016/02/01.
//  Copyright © 2016年 Ayami_Imai. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    //appDelegateというところに、一時的に値を保存する。<-押したボタンが何かを、のちのviewに伝えるために保存する。
    let AppDel:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate!
    //userDefaults(データを保存することができる場所)<-主に、最後におみくじを引いた日を保存する
    let userDefaults = NSUserDefaults.standardUserDefaults()
    //アプリを開いたときの日付をここにいれる
    var currentDate: String!
    
    @IBOutlet weak var oldButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //----本日の日付を取得したものが返ってくるので、それをcurrentDateに保存する----
        self.currentDate = getTime()
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
//    override func prefersStatusBarHidden() -> Bool {
//        return navigationController!.navigationBarHidden
//    }

    
    //----今日の日付を取得して、returnする----
    func getTime() -> String {
        let now = NSDate()
        let formatter = NSDateFormatter()
        //----"2016/12/23"---- のように
        formatter.dateFormat = "yyyy/MM/dd"
        return formatter.stringFromDate(now)
    }
    
//----古来おみくじのボタンが押されたとき
    @IBAction func old_slot(sender: AnyObject) {
        if(userDefaults.stringForKey("latestDate") != currentDate){
            //----今日まだおみくじを引いていないとき----
            //----古来おみくじは 1 ----
            AppDel.num = 1
            //----今日の日付をユーザーデフォルトに保存----
            userDefaults.setObject(currentDate, forKey: "latestDate")
            //----遷移する関数を呼び出し----
            nextViewController()
        } else {
            //----今日2回目以降----
            print("本日二回目以降です")
            
            oneDayViewController()
            
            //====== テスト用 =====
            AppDel.num = 1
            //nextViewController()
            //===== テスト用 =====
        }
    }
//----現代おみくじのボタンが押されたとき
    @IBAction func presemt_slots(sender: AnyObject) {
        if(userDefaults.stringForKey("latestDate") != currentDate){
            //----今日まだおみくじを引いていないとき----
            //----現代おみくじは 2  ----
            AppDel.num = 2
            //----今日の日付をユーザーデフォルトに保存----
            userDefaults.setObject(currentDate, forKey: "latestDate")
            //----遷移する関数を呼び出し----
            nextViewController()
        } else {
            //----今日2回目以降----
            oneDayViewController()
            print("本日二回目以降です")
            //nextViewController()
            AppDel.num = 2
        }
    }
//----青春おみくじのボタンが押されたとき
    @IBAction func aohaRoid_slot(sender: AnyObject) {
        if(userDefaults.stringForKey("latestDate") != currentDate){
            //----今日まだおみくじを引いていないとき----
            //----青春おみくじは 3 ----
            AppDel.num = 3
            //----今日の日付をユーザーデフォルトに保存----
            userDefaults.setObject(currentDate, forKey: "latestDate")
            //----遷移する関数を呼び出し----
            nextViewController()
        } else {
            //----今日2回目以降----
            print("本日二回目以降です")
            oneDayViewController()
            //nextViewController()
            AppDel.num = 3
        }
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func nextViewController() {
        //----端末を振る画面への遷移----
        self.performSegueWithIdentifier("go", sender: nil)
    }
    func oneDayViewController() {
        self.performSegueWithIdentifier("oneDay", sender: nil)
    }

}
