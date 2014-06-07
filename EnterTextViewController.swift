//
//  EnterTextViewController.swift
//  displayen
//
//  Created by Christoffer Tønnessen on 06/06/14.
//  Copyright (c) 2014 Tonnessen. All rights reserved.
//

import UIKit

class EnterTextViewController: UIViewController {

    @IBOutlet var textInputField : UITextField = nil

    @IBAction func textFieldReturn(sender : UITextField) {
        self.performSegueWithIdentifier("ShowTextView", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        textInputField.becomeFirstResponder()
        println("EnterTextViewController loaded")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        println("EnterTextViewController did recieve memeory warning")
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if segue.identifier == "ShowTextView" {
            if let targetViewController = segue.destinationViewController as? ShowTextViewController {
                targetViewController.setTitle(title: "\(textInputField.text)")
                targetViewController.setTextInfo(textInfo: textInputField.text)
            }
        }
    }
}