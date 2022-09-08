//
//  LiveTVApp.swift
//  LiveTV
//
//  Created by chenwang on 2022/9/8.
//

import SwiftUI

@main
struct LiveTVApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
