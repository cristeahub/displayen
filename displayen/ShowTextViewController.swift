//
//  ShowTextViewController.swift
//  displayen
//
//  Created by Christoffer Tønnessen on 07/06/14.
//  Copyright (c) 2014 Tonnessen. All rights reserved.
//

import UIKit

class ShowTextViewController : UIViewController {

    var textInfo : String? = nil

    @IBOutlet var textLabel : UILabel = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController.setNavigationBarHidden(false, animated: true)
        UIApplication.sharedApplication().setStatusBarHidden(false, animated: true)

        self.textLabel.text = self.textInfo
        scaleLabelToInput()
        
        let tap = UITapGestureRecognizer(target: self, action:"handleTap")
        self.view.addGestureRecognizer(tap)

        println("ShowTextViewController did load")
    }

    override func didReceiveMemoryWarning() {
        println("ShowTextViewController did recieve memory warning")
    }

    func scaleLabelToInput() {
        self.textLabel.adjustsFontSizeToFitWidth = true
    }

    func handleTap() {
        self.performSegueWithIdentifier("FullscreenTextViewSegue", sender: self)
    }

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if let targetViewController = segue.destinationViewController as? FullscreenTextViewController {
            targetViewController.textInfo = self.textInfo
        }
    }
}