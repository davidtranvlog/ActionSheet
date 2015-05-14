//
//  ViewController.swift
//  Actionsheet
//
//  Created by Duc Tran on 5/5/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var alertController: UIAlertController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        alertController = UIAlertController(title: "Send me via?", message: "You can send me via email or iMessage", preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        let emailAction = UIAlertAction(title: "Email", style: UIAlertActionStyle.Default) { (action) -> Void in
            // send the file via email
            println("send the file via email")
        }
        
        let imessageAction = UIAlertAction(title: "iMessage", style: UIAlertActionStyle.Default) { (action) -> Void in
            // send the file via imessage
            println("send the file via imessage")
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel) { (action) -> Void in
            println("actionsheet was canceled")
        }
        
        alertController.addAction(emailAction)
        alertController.addAction(imessageAction)
        alertController.addAction(cancelAction)
        
    }
    
    
    @IBAction func showActionsheet(sender: AnyObject) {
        self.presentViewController(alertController, animated: true, completion: nil)
    }


}














