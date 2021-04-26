//
//  ViewController.swift
//  Demo
//
//  Created by INGENOSYA SA on 12/04/2021.
//  Copyright © 2021 INGENOSYA SA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn_topleft: UIButton!
    @IBOutlet weak var btn_topright: UIButton!
    @IBOutlet weak var bottom_left: UIButton!
    
    public var value :((String?) -> Void)?
    //Title
    var clickedButton: String = "";
    
    //public var value:String?
    
    //public var value :String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNavigationBar()
        // Do any additional setup after loading the view.
        
        //Custom Buttom
        btn_topleft.layer.cornerRadius = 12
        btn_topright.layer.cornerRadius = 12
        bottom_left.layer.cornerRadius = 12
        
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "InputVCToDisplayVC"){
                let displayVC = segue.destination as! DemoViewController
                displayVC.clickedButton = clickedButton
        }
    }
    
    @IBAction func topLeft(){
        clickedButton = "top_left"
        self.performSegue(withIdentifier: "InputVCToDisplayVC", sender: self)
        /* let intent = storyboard?.instantiateViewController(identifier: "Demo") as! DemoViewController
        intent.modalPresentationStyle = .fullScreen
        present(intent,animated: true) */
    }
    
    @IBAction func topRight(_ sender: Any) {
        clickedButton = "top_right"
        self.performSegue(withIdentifier: "InputVCToDisplayVC", sender: self)
    }
    
    @IBAction func bottomLeft(_ sender: Any) {
        clickedButton = "bottom_left"
        self.performSegue(withIdentifier: "InputVCToDisplayVC", sender: self)
    }
    
    func setNavigationBar() {
        let screenSize: CGRect = UIScreen.main.bounds
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: 44))
        let navItem = UINavigationItem(title: "")
        let doneItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: nil, action: nil)
        navItem.rightBarButtonItem = doneItem
        navBar.setItems([navItem], animated: false)
        self.view.addSubview(navBar)
    }
    
}

