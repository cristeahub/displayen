//
//  FullscreenTextViewController.swift
//  displayen
//
//  Created by Christoffer Tønnessen on 07/06/14.
//  Copyright (c) 2014 Tonnessen. All rights reserved.
//

import UIKit

class FullscreenTextViewController: UIViewController {

    var textInfo: String? = nil

    @IBOutlet var fullscreenLabel : UILabel = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController.setNavigationBarHidden(true, animated: true)
        UIApplication.sharedApplication().setStatusBarHidden(true, animated: true)

        self.fullscreenLabel.transform = CGAffineTransformMakeRotation(3.14/2)
        self.fullscreenLabel.frame.size.width = self.fullscreenLabel.frame.size.height
        self.fullscreenLabel.text = textInfo
        self.fullscreenLabel.adjustsFontSizeToFitWidth = true

        let tap = UITapGestureRecognizer(target: self, action:"handleTap")
        self.view.addGestureRecognizer(tap)

        println("FullscreenTextViewController loaded")
    }

    func handleTap() {
        self.navigationController.setNavigationBarHidden(false, animated: true)
        UIApplication.sharedApplication().setStatusBarHidden(false, animated: true)
        self.navigationController.popViewControllerAnimated(true)
    }

    override func didReceiveMemoryWarning() {
        println("FullscreenTextViewController did recieve memory warning")
    }
}