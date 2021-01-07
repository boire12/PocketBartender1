//
//  AppDelegate.swift
//  PocketBartender
//
//  Created by Tristan Boire on 2020-12-14.
//

import SwiftUI
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:
                    [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    // Use Firebase library to configure APIs
    FirebaseApp.configure()
    return true
}
}

