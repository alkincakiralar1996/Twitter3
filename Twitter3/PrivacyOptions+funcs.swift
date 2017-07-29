//
//  PrivacyOptions+funcs.swift
//  Twitter3
//
//  Created by Macintosh HD on 29/07/2017.
//  Copyright © 2017 Macintosh HD. All rights reserved.
//

import UIKit

extension PrivacyOptionsViewController{
 
    override func viewDidAppear(_ animated: Bool) {
        AppUtility.lockOrientation(.portrait)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        AppUtility.lockOrientation(.all)
    }
    
    func passBackPage(){
        dismiss(animated: true, completion: nil)
    }
    
    
    func setAllComponentsSettings(){
        //VIEW SETTINGS
        self.view.backgroundColor = UIColor.white
        
        //NAV SETTINGS
        navigationController?.navigationBar.barTintColor = UIColor.white
        
        // NAV UI VIEW
        navigationController?.navigationBar.addSubview(navView)
        navView.leftAnchor.constraint(equalTo: (navigationController?.navigationBar.leftAnchor)!).isActive = true
        navView.topAnchor.constraint(equalTo: (navigationController?.navigationBar.topAnchor)!).isActive = true
        navView.widthAnchor.constraint(equalTo: (navigationController?.navigationBar.widthAnchor)!).isActive = true
        navView.heightAnchor.constraint(equalTo: (navigationController?.navigationBar.heightAnchor)!).isActive = true
        
        // TOP  NAV ITEM
        navView.addSubview(navTopItem)
        navTopItem.centerXAnchor.constraint(equalTo: navView.centerXAnchor).isActive = true
        navTopItem.centerYAnchor.constraint(equalTo: navView.centerYAnchor).isActive = true
        
        //LEFT NAV ITEM
        navView.addSubview(navRightItem)
        navRightItem.rightAnchor.constraint(equalTo: navView.rightAnchor, constant: -15).isActive = true
        navRightItem.centerYAnchor.constraint(equalTo: navView.centerYAnchor).isActive = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(passBackPage))
        navRightItem.addGestureRecognizer(tap)
        navRightItem.isUserInteractionEnabled = true
    }
    
    
    func setTableViewComponentsSettings(){
        shareCell1.addSubview(shareView1)
        shareView1.centerYAnchor.constraint(equalTo: shareCell1.centerYAnchor).isActive = true
        shareView1.centerXAnchor.constraint(equalTo: shareCell1.centerXAnchor).isActive = true
        shareView1.widthAnchor.constraint(equalTo: shareCell1.widthAnchor).isActive = true
        shareView1.heightAnchor.constraint(equalTo: shareCell1.heightAnchor).isActive = true
        shareView1.addSubview(labelShare1)
        labelShare1.leftAnchor.constraint(equalTo: shareView1.leftAnchor, constant: 10).isActive = true
        labelShare1.centerYAnchor.constraint(equalTo: shareView1.centerYAnchor).isActive = true
        shareView1.addSubview(switchButton1)
        switchButton1.rightAnchor.constraint(equalTo: shareView1.rightAnchor, constant: -10).isActive = true
        switchButton1.centerYAnchor.constraint(equalTo: shareView1.centerYAnchor).isActive = true
        
        shareCell2.addSubview(shareView2)
        shareView2.centerYAnchor.constraint(equalTo: shareCell2.centerYAnchor).isActive = true
        shareView2.centerXAnchor.constraint(equalTo: shareCell2.centerXAnchor).isActive = true
        shareView2.widthAnchor.constraint(equalTo: shareCell2.widthAnchor).isActive = true
        shareView2.heightAnchor.constraint(equalTo: shareCell2.heightAnchor).isActive = true
        shareView2.addSubview(labelShare2)
        labelShare2.leftAnchor.constraint(equalTo: shareView2.leftAnchor, constant: 10).isActive = true
        labelShare2.centerYAnchor.constraint(equalTo: shareView2.centerYAnchor).isActive = true
        shareView2.addSubview(switchButton2)
        switchButton2.rightAnchor.constraint(equalTo: shareView2.rightAnchor, constant: -10).isActive = true
        switchButton2.centerYAnchor.constraint(equalTo: shareView2.centerYAnchor).isActive = true
        
        
    }
    
}
