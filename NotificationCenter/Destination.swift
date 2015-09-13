//
//  Destination.swift
//  NotificationCenter
//
//  Created by Marius Horga on 9/13/15.
//  Copyright (c) 2015 Marius Horga. All rights reserved.
//

import UIKit

class Destination: NSObject {
   
    let submitNotification = "submitNotification"
    
    override init() {
        super.init()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "didReceiveSubmitNotification:", name: submitNotification, object: nil)
    }
    
    func update() {
        print("I got notification in destination class.")
    }
    
    func didReceiveSubmitNotification(notification: NSNotification) {
        update()
    }
}
