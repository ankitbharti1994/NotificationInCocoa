//
//  ViewController.swift
//  LocalNotification
//
//  Created by Ankit Kumar Bharti on 30/07/18.
//  Copyright © 2018 Exilant. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBAction func presentNotification(_ sender: Any) {
        let notification = NSUserNotification()
        notification.title = "Welcome To Cocoa Notification Center"
        notification.subtitle = "Learn more about Notification in cocoa"
        notification.informativeText = "This is a local notification"
        notification.soundName = NSUserNotificationDefaultSoundName
        notification.contentImage = NSImage(named: NSImage.Name("creative"))
        notification.deliveryDate = Date(timeIntervalSinceNow: 10.0)
        
        // buttons
        notification.hasReplyButton = true
        notification.responsePlaceholder = "enter reply text here"
        
        //notification.hasActionButton = true
        //notification.actionButtonTitle = "Visit Website"
        //notification.otherButtonTitle = "Show More"
        
        NSUserNotificationCenter.default.scheduleNotification(notification)
    }
}
