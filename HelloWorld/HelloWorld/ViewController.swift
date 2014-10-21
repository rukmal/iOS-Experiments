//
//  ViewController.swift
//  HelloWorld
//
//  Created by Rukmal Weerawarana on 10/21/14.
//  Copyright (c) 2014 Rukmal Weerawarana. All rights reserved.
//

import UIKit

var counter: Int = 0

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func triggerButton(sender: UIButton) {
        counter += 1
        var message: String = "You hello world'ed " + String(counter) + " times!"
        var alert = UIAlertController(title: "Hello!", message: message, preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        var resetAction: UIAlertAction = UIAlertAction(title: "Reset", style: .Destructive, handler: { action in
            counter = 0
        })
        alert.addAction(resetAction)
        self.presentViewController(alert, animated: true, completion: nil)
    }

}