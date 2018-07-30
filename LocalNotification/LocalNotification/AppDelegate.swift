//
//  AppDelegate.swift
//  LocalNotification
//
//  Created by Ankit Kumar Bharti on 30/07/18.
//  Copyright © 2018 Exilant. All rights reserved.
//

import Cocoa


@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        NSUserNotificationCenter.default.delegate = self
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}

// MARK:- NSUserNotificationCenterDelegate
extension AppDelegate: NSUserNotificationCenterDelegate {
    
    func userNotificationCenter(_ center: NSUserNotificationCenter, didActivate notification: NSUserNotification) {
        switch notification.activationType {
        case .replied:
            print(notification.response?.string ?? "N/A")
        case .actionButtonClicked:
            NSWorkspace.shared.open(URL(string: "https://google.co.in")!)
        default:
            print(notification.title ?? "")
        }
    }
    
}
