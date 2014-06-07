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

        self.textLabel.text = self.textInfo
        scaleLabelToInput()

        println("ShowTextViewController did load")
    }
    
    override func didReceiveMemoryWarning() {
        println("ShowTextViewController did recieve memory warning")
    }

    func setTitle(#title:String) {
        self.title = title
    }

    func setTextInfo(#textInfo:String) {
        self.textInfo = textInfo
    }

    func scaleLabelToInput() {
        self.textLabel.adjustsFontSizeToFitWidth = true
    }
}