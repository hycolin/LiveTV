//
//  AppDelegate.swift
//  LiveTV
//
//  Created by chenwang on 2022/9/8.
//

import Foundation
import UIKit
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        AppCenter.start(withAppSecret: "479240e7-b9f2-41fd-867c-4f438eeb02c7", services:[
          Analytics.self,
          Crashes.self
        ])
        
        Crashes.delegate = self
        
        return true
    }
}

extension AppDelegate: CrashesDelegate {
    func crashes(_ crashes: Crashes, willSend errorReport: ErrorReport) {
      print("crashes will send")
    }
}
