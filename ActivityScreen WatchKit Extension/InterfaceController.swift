//
//  InterfaceController.swift
//  ActivityScreen WatchKit Extension
//
//  Created by jim Veneskey on 7/6/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBOutlet weak var messageLabel: WKInterfaceLabel!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        // Create the message we want to display
        var message = NSMutableAttributedString(string: "Stand. Move. Exercise. Try to complete the rings every day")
        // colorize the message
        message.addAttribute(NSForegroundColorAttributeName, value: UIColor.cyanColor(), range: NSMakeRange(0, 6))
        message.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor(), range: NSMakeRange(7, 5))

        message.addAttribute(NSForegroundColorAttributeName, value: UIColor.greenColor(), range: NSMakeRange(13, 9))
        
        messageLabel.setAttributedText(message)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
