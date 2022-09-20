//
//  AppDelegate.swift
//  taskapp
//
//  Created by Natsuko Sakai on 2022/09/05.
//

import UIKit
import UserNotifications

@main

class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //　ユーザーに通知の許可を求める
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
            
        }
        center.delegate = self
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    // アプリがフォアグラウンドのときに通知を受け取ると呼ばれるメソッド
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.banner, .list, .sound])
    }
}
