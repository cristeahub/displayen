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

    override func viewDidLoad() {
        super.viewDidLoad()

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
}