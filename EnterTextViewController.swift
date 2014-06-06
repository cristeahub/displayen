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
    @IBOutlet var showTextButton : UIButton = nil

    @IBAction func textFieldReturn(sender : UITextField) {
        sender.resignFirstResponder()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let tap = UITapGestureRecognizer(target: self, action: "handleTap")
        self.view.addGestureRecognizer(tap)
        println("EnterTextViewController loaded")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        println("EnterTextViewController did recieve memeory warning")
    }

    func handleTap() {
        self.textInputField.resignFirstResponder()
    }
}