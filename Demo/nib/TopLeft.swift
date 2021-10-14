//
//  TopLeft.swift
//  Demo
//
//  Created by INGENOSYA SA on 24/04/2021.
//  Copyright © 2021 INGENOSYA SA. All rights reserved.
//

import UIKit

class TopLeft: UIView {
    
    @IBOutlet var contentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        loadview()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder : aDecoder)
        loadview()
    }
    
    public func loadview(){
        
        Bundle.main.loadNibNamed("TopLeft", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [ .flexibleWidth, .flexibleHeight]
        
    
    }
    
    
}
