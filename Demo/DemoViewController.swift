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
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentWebView: UIView!
    @IBOutlet weak var lorem1: UITextView!
    @IBOutlet weak var lorem2: UITextView!
    @IBOutlet weak var lorem3: UITextView!
    @IBOutlet weak var lorem4: UITextView!
    @IBOutlet weak var lorem5: UITextView!
    @IBOutlet weak var lorem6: UITextView!
    @IBOutlet weak var lorem7: UITextView!
    @IBOutlet weak var navTitle: UINavigationItem!
    private var lastContentOffset : CGPoint = .zero
    //Title
    var clickedButton: String?
    
    @IBOutlet weak var constraintHeight: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        //Param à sasair par Client
        let paramURL = "https://www.20minutes.fr/arts-stars/television/2981275-20210222-marseillais-dubai-quand-ca-allait-tapais-poing-table-previent-jessica-aidi-bookeuse"
        
        let paramSRC = "pqvp3r"
        let autoplay = "1"
        
        let paramMDTK = "01132356"
        let paramZONE = "54"
        let paramGDPRCONSENTSTRING = "BOj8iv4Oj8iwYAHABAlxCS-AAAAnF7_______9______9uz_Ov_v_f__33e87_9v_l_7_-___u_-3zd4-_1vf99yfm1-7etr3tp_87ues2_Xur__59__3z3_9phPrsk89r633A"
        
    
    
        affiche_webview(_view: contentWebView,paramURL : paramURL, paramSRC : paramSRC, autoplay : autoplay, paramMDTK : paramMDTK, paramZONE : paramZONE, paramGDPRCONSENTSTRING : paramGDPRCONSENTSTRING)
        
       

        //viewDidAutoPlayBottomAsLeft()
        
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

extension DemoViewController  {
    
    public func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //Estimation fotsiny io valeur 80 sy 200 io fa afaka maka marge
        
        if scrollView.contentOffset.y >= 80 {
                self.constraintHeight.constant = 192
                UIView.animate(withDuration: 0.5) {
                    self.hideDidScroll()
                    self.view.layoutIfNeeded()
                }
            }else if scrollView.contentOffset.y <= 200 {
                self.constraintHeight.constant = 0
                UIView.animate(withDuration: 0.5) {
                    self.viewDidAutoPlayTopAsLeft()
                    self.view.layoutIfNeeded()
            }
        }
    }
}
