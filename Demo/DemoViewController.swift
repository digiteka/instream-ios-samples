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
    @IBOutlet weak var lorem1: UITextView!
    @IBOutlet weak var lorem2: UITextView!
    @IBOutlet weak var lorem3: UITextView!
    @IBOutlet weak var lorem4: UITextView!
    @IBOutlet weak var lorem5: UITextView!
    @IBOutlet weak var lorem6: UITextView!
    @IBOutlet weak var lorem7: UITextView!
    @IBOutlet weak var navTitle: UINavigationItem!
    //Title
    var clickedButton: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        affiche_webview(_view: contentWebView)
        viewDidAutoPlayTopAsLeft()
        viewDidAutoPlayBottomAsLeft()
        lorem1.isEditable = false
        lorem2.isEditable = false
        lorem3.isEditable = false
        lorem4.isEditable = false
        lorem5.isEditable = false
        lorem6.isEditable = false
        lorem7.isEditable = false
        navTitle.title = clickedButton
        //viewDidAutoPlayTopAsRightDidScroll()
    }
    
    @IBAction func backHome(_ sender: Any) {
        //lorem1.text = "Change"
        let intent = storyboard?.instantiateViewController(identifier: "Home") as! ViewController
        intent.modalPresentationStyle = .fullScreen
        present(intent,animated: true)
    }
}
