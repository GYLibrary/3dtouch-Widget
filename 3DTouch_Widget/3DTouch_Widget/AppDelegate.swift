//
//  AppDelegate.swift
//  3DTouch_Widget
//
//  Created by zhuguangyang on 2017/1/19.
//  Copyright © 2017年 GYJade. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        registHomeScreenQuickActions()

        return true
    }
    
    
    /// 3dtouch 响应
    ///
    /// - Parameters:
    ///   - application: application description
    ///   - shortcutItem: shortcutItem description
    ///   - completionHandler: completionHandler description
    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        debugPrint(shortcutItem)
        if let userInfo = shortcutItem.userInfo {
            print(userInfo)
        }
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
    /// 添加3Dtouch item
    fileprivate func registHomeScreenQuickActions() {
        
        
        let item1 = UIApplicationShortcutItem(type: "com.Ozner.gytouch", localizedTitle: "手动注册Title", localizedSubtitle: "subtitle", icon: UIApplicationShortcutIcon(type: UIApplicationShortcutIconType.home), userInfo: nil)
        //最多四个item
        UIApplication.shared.shortcutItems = [item1,item1,item1,item1,item1]
    }


}

