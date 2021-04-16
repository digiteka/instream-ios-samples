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
        
        //Param à sasair par Client
        let paramURL = "https://www.20minutes.fr/arts-stars/television/2981275-20210222-marseillais-dubai-quand-ca-allait-tapais-poing-table-previent-jessica-aidi-bookeuse"
        
        let paramSRC = "pqvp3r"
        let autoplay = "1"
        
        let paramMDTK = "01132356"
        let paramZONE = "54"
        let paramGDPRCONSENTSTRING = "BOj8iv4Oj8iwYAHABAlxCS-AAAAnF7_______9______9uz_Ov_v_f__33e87_9v_l_7_-___u_-3zd4-_1vf99yfm1-7etr3tp_87ues2_Xur__59__3z3_9phPrsk89r633A"
        
    
    
        affiche_webview(_view: contentWebView,paramURL : paramURL, paramSRC : paramSRC, autoplay : autoplay, paramMDTK : paramMDTK, paramZONE : paramZONE, paramGDPRCONSENTSTRING : paramGDPRCONSENTSTRING)
        
        viewDidAutoPlayTopAsLeft()
        //viewDidAutoPlayBottomAsLeft()
        //viewDidAutoPlayTopAsRightDidScroll()
    }
}
