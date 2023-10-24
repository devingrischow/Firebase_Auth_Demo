//
//  AppDelegate.swift
//  Firebase_Login_Test
//
//  Created by Devin Grischow on 10/23/23.
//

import SwiftUI
import FirebaseCore

/*
 A Delegate controlls parts of the apps flow and its background interactions
 In this case when the app is launched and being used the first thing that happens is that
 Firebase is configured.
 
 This controlls the app on a per launch level. You can also use Scene Delegates to controll what happens per scene.
 */

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        return true
    }
}
