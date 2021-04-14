//
//  DemoViewController.swift
//  Demo
//
//  Created by INGENOSYA SA on 12/04/2021.
//  Copyright © 2021 INGENOSYA SA. All rights reserved.
//

import UIKit
import Digiteka

class DemoViewController: DigitekaPlayer {
    @IBOutlet weak var contentWebView: UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        affiche_webview(_view: contentWebView)
        viewDidAutoPlayTopAsLeft()
        viewDidAutoPlayBottomAsLeft()
        //viewDidAutoPlayTopAsRightDidScroll()
    }
}
