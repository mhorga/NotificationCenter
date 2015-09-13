//
//  ViewController.swift
//  NotificationCenter
//
//  Created by Marius Horga on 9/13/15.
//  Copyright (c) 2015 Marius Horga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let submitNotification = "submitNotification"
    let destination = Destination()
    
    @IBOutlet weak var successLabel: UILabel!
    
    @IBAction func submitAction(sender: UIButton) {
        NSNotificationCenter.defaultCenter().postNotificationName(submitNotification, object: nil)
    }
    
    func showSuccessLabel() {
        successLabel.text = "I got notification in source class."
        successLabel.alpha = 1.0
        UIView.animateWithDuration(2.0, animations: { () -> Void in
            self.successLabel.alpha = 0.0
        })
    }
    
    func didReceiveSubmitNotification(notification: NSNotification) {
        showSuccessLabel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "didReceiveSubmitNotification:", name: submitNotification, object: nil)
    }
}

