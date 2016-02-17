//
//  AppDelegate.swift
//  OMIKUJI
//
//  Created by Ayami_Imai on 2016/01/03.
//  Copyright (c) 2016年 Ayami_Imai. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var numDictionary = Dictionary<String,Int>()
    var num: Int!

//    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
//        // Override point for customization after application launch.
//        let storyboard: UIStoryboard = self.grabStoryboard()
//        if let window = window {
//            window.rootViewController = storyboard.instantiateInitialViewController()!
//        }
//        self.window?.makeKeyAndVisible()
//        return true
//    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

//    func grabStoryboard() -> UIStoryboard {
//        var storyboard = UIStoryboard()
//        //let storyboard: UIStoryboard
//        let height = UIScreen.mainScreen().bounds.size.height
//        if height == 480 {
//            storyboard = UIStoryboard(name: "Main", bundle: nil)
//        } else {
//            storyboard = UIStoryboard(name: "3_5Main", bundle: nil)
//        }
//        return storyboard
//    }
    
//    class AppDelegate: UIResponder, UIApplicationDelegate {
//        var window: UIWindow?
//        func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
//            // 最初に表示する画面を指定する
//            let firstView: MenuViewController = MenuViewController()
//            // NavigationControllerを設定する
//            let myNavigationController: UINavigationController = UINavigationController(rootViewController: firstView)
//            
//            // おまじない
//            self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
//            self.window?.rootViewController = myNavigationController
//            self.window?.makeKeyAndVisible()
//            return true
//        }
//    }
}

