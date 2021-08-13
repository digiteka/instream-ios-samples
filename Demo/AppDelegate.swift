//
//  AppDelegate.swift
//  Demo
//
//  Created by INGENOSYA SA on 12/04/2021.
//  Copyright © 2021 INGENOSYA SA. All rights reserved.
//

import UIKit
import ChoiceMobile

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, ChoiceCmpDelegate {
    func cmpDidLoad(info: PingResponse) {
       
    }
    
    func cmpDidShow(info: PingResponse) {
       
    }
    
    func didReceiveIABVendorConsent(tcData: TCData, updated: Bool) {
        // if GDPR does NOT apply, feel free to start up all your vendors
        print("IAB Vendor Consent Given")
        print("TCData =",tcData.tcString)
        if (!tcData.gdprApplies! /*|| tcData.vendor.consents["200"]!*/){
            // start up Quantcast Measure SDK
               print("RGPD false")
            }
        else {
            print("RGPD true")
        }
    }
    
    func didReceiveNonIABVendorConsent(nonIabData: NonIABData, updated: Bool) {
        print("IAB Vendor Consent not Given")
        if( !nonIabData.gdprApplies ){

            }else {
               
            }
    }
    
    func didReceiveAdditionalConsent(acData: ACData, updated: Bool) {
        
    }
    
    func cmpDidError(error: Error) {
        
    }
    

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        ChoiceCmp.shared.startChoice(pcode: "p-D9_vrdHX3Dtfh", delegate: self)
        if #available(iOS 13.0, *) {
           UIApplication.shared.windows.forEach { window in
               window.overrideUserInterfaceStyle = .light
           }
       }
        return true
    }
    @available(iOS 13.0, *)
       func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        //ChoiceCmp.shared.startChoice(pcode: "p-D9_vrdHX3Dtfh", delegate: self)
           // Called when a new scene session is being created.
           // Use this method to select a configuration to create the new scene with.
           return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
       }

       @available(iOS 13.0, *)
       func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        //ChoiceCmp.shared.startChoice(pcode: "p-D9_vrdHX3Dtfh", delegate: self)
           // Called when the user discards a scene session.
           // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
           // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
       }

}

