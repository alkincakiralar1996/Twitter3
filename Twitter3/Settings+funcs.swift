//
//  Settings+funcs.swift
//  Twitter3
//
//  Created by Macintosh HD on 29/07/2017.
//  Copyright © 2017 Macintosh HD. All rights reserved.
//
import UIKit

extension SettingsViewController{
    
    func handleCancel(){
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
        
        //RIGHT NAV ITEM
        navView.addSubview(navRightItem)
        navRightItem.rightAnchor.constraint(equalTo: navView.rightAnchor, constant: -15).isActive = true
        navRightItem.centerYAnchor.constraint(equalTo: navView.centerYAnchor).isActive = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleCancel))
        navRightItem.addGestureRecognizer(tap)
        navRightItem.isUserInteractionEnabled = true
    }
    
    func tableViewComponentsSettings(){
        
        // CELL 1 SETTINGS
        shareCell1.addSubview(shareView1)
        shareView1.centerYAnchor.constraint(equalTo: shareCell1.centerYAnchor).isActive = true
        shareView1.centerXAnchor.constraint(equalTo: shareCell1.centerXAnchor).isActive = true
        shareView1.widthAnchor.constraint(equalTo: shareCell1.widthAnchor).isActive = true
        shareView1.heightAnchor.constraint(equalTo: shareCell1.heightAnchor).isActive = true
        shareView1.addSubview(labelShare1)
        labelShare1.leftAnchor.constraint(equalTo: shareView1.leftAnchor, constant: 10).isActive = true
        labelShare1.centerYAnchor.constraint(equalTo: shareView1.centerYAnchor).isActive = true
        shareView1.addSubview(labelRightShare1)
        labelRightShare1.rightAnchor.constraint(equalTo: shareView1.rightAnchor, constant: -10).isActive = true
        labelRightShare1.centerYAnchor.constraint(equalTo: shareView1.centerYAnchor).isActive = true
        
        //CELL 2 SETTINGS
        shareCell2.addSubview(shareView2)
        shareView2.centerYAnchor.constraint(equalTo: shareCell2.centerYAnchor).isActive = true
        shareView2.centerXAnchor.constraint(equalTo: shareCell2.centerXAnchor).isActive = true
        shareView2.widthAnchor.constraint(equalTo: shareCell2.widthAnchor).isActive = true
        shareView2.heightAnchor.constraint(equalTo: shareCell2.heightAnchor).isActive = true
        shareView2.addSubview(labelShare2)
        labelShare2.leftAnchor.constraint(equalTo: shareView2.leftAnchor, constant: 10).isActive = true
        labelShare2.centerYAnchor.constraint(equalTo: shareView2.centerYAnchor).isActive = true
        shareView2.addSubview(rightShare2)
        rightShare2.rightAnchor.constraint(equalTo: shareView2.rightAnchor, constant: -15).isActive = true
        rightShare2.centerYAnchor.constraint(equalTo: shareView2.centerYAnchor).isActive = true
        rightShare2.widthAnchor.constraint(equalToConstant: 15).isActive = true
        rightShare2.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        //CELL 3 SETTINGS
        shareCell3.addSubview(shareView3)
        shareView3.centerYAnchor.constraint(equalTo: shareCell3.centerYAnchor).isActive = true
        shareView3.centerXAnchor.constraint(equalTo: shareCell3.centerXAnchor).isActive = true
        shareView3.widthAnchor.constraint(equalTo: shareCell3.widthAnchor).isActive = true
        shareView3.heightAnchor.constraint(equalTo: shareCell3.heightAnchor).isActive = true
        shareView3.addSubview(labelShare3)
        labelShare3.leftAnchor.constraint(equalTo: shareView3.leftAnchor, constant: 10).isActive = true
        labelShare3.centerYAnchor.constraint(equalTo: shareView3.centerYAnchor).isActive = true
        shareView3.addSubview(rightShare3)
        rightShare3.rightAnchor.constraint(equalTo: shareView3.rightAnchor, constant: -15).isActive = true
        rightShare3.centerYAnchor.constraint(equalTo: shareView3.centerYAnchor).isActive = true
        rightShare3.widthAnchor.constraint(equalToConstant: 15).isActive = true
        rightShare3.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        //CELL 4 SETTINGS
        shareCell4.addSubview(shareView4)
        shareView4.centerYAnchor.constraint(equalTo: shareCell4.centerYAnchor).isActive = true
        shareView4.centerXAnchor.constraint(equalTo: shareCell4.centerXAnchor).isActive = true
        shareView4.widthAnchor.constraint(equalTo: shareCell4.widthAnchor).isActive = true
        shareView4.heightAnchor.constraint(equalTo: shareCell4.heightAnchor).isActive = true
        shareView4.addSubview(labelShare4)
        labelShare4.leftAnchor.constraint(equalTo: shareView4.leftAnchor, constant: 10).isActive = true
        labelShare4.centerYAnchor.constraint(equalTo: shareView4.centerYAnchor).isActive = true
        shareView4.addSubview(rightShare4)
        rightShare4.rightAnchor.constraint(equalTo: shareView4.rightAnchor, constant: -15).isActive = true
        rightShare4.centerYAnchor.constraint(equalTo: shareView4.centerYAnchor).isActive = true
        rightShare4.widthAnchor.constraint(equalToConstant: 15).isActive = true
        rightShare4.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        //CELL 5 SETTINGS
        shareCell5.addSubview(shareView5)
        shareView5.centerYAnchor.constraint(equalTo: shareCell5.centerYAnchor).isActive = true
        shareView5.centerXAnchor.constraint(equalTo: shareCell5.centerXAnchor).isActive = true
        shareView5.widthAnchor.constraint(equalTo: shareCell5.widthAnchor).isActive = true
        shareView5.heightAnchor.constraint(equalTo: shareCell5.heightAnchor).isActive = true
        shareView5.addSubview(labelShare5)
        labelShare5.leftAnchor.constraint(equalTo: shareView5.leftAnchor, constant: 10).isActive = true
        labelShare5.centerYAnchor.constraint(equalTo: shareView5.centerYAnchor).isActive = true
        shareView5.addSubview(rightShare5)
        rightShare5.rightAnchor.constraint(equalTo: shareView5.rightAnchor, constant: -15).isActive = true
        rightShare5.centerYAnchor.constraint(equalTo: shareView5.centerYAnchor).isActive = true
        rightShare5.widthAnchor.constraint(equalToConstant: 15).isActive = true
        rightShare5.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        //CELL 6 SETTINGS
        shareCell6.addSubview(shareView6)
        shareView6.centerYAnchor.constraint(equalTo: shareCell6.centerYAnchor).isActive = true
        shareView6.centerXAnchor.constraint(equalTo: shareCell6.centerXAnchor).isActive = true
        shareView6.widthAnchor.constraint(equalTo: shareCell6.widthAnchor).isActive = true
        shareView6.heightAnchor.constraint(equalTo: shareCell6.heightAnchor).isActive = true
        shareView6.addSubview(labelShare6)
        labelShare6.leftAnchor.constraint(equalTo: shareView6.leftAnchor, constant: 10).isActive = true
        labelShare6.centerYAnchor.constraint(equalTo: shareView6.centerYAnchor).isActive = true
        shareView6.addSubview(rightShare6)
        rightShare6.rightAnchor.constraint(equalTo: shareView6.rightAnchor, constant: -15).isActive = true
        rightShare6.centerYAnchor.constraint(equalTo: shareView6.centerYAnchor).isActive = true
        rightShare6.widthAnchor.constraint(equalToConstant: 15).isActive = true
        rightShare6.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        //CELL 7 SETTINGS
        shareCell7.addSubview(shareView7)
        shareView7.centerYAnchor.constraint(equalTo: shareCell7.centerYAnchor).isActive = true
        shareView7.centerXAnchor.constraint(equalTo: shareCell7.centerXAnchor).isActive = true
        shareView7.widthAnchor.constraint(equalTo: shareCell7.widthAnchor).isActive = true
        shareView7.heightAnchor.constraint(equalTo: shareCell7.heightAnchor).isActive = true
        shareView7.addSubview(labelShare7)
        labelShare7.leftAnchor.constraint(equalTo: shareView7.leftAnchor, constant: 10).isActive = true
        labelShare7.centerYAnchor.constraint(equalTo: shareView7.centerYAnchor).isActive = true
        shareView7.addSubview(rightShare7)
        rightShare7.rightAnchor.constraint(equalTo: shareView7.rightAnchor, constant: -15).isActive = true
        rightShare7.centerYAnchor.constraint(equalTo: shareView7.centerYAnchor).isActive = true
        rightShare7.widthAnchor.constraint(equalToConstant: 15).isActive = true
        rightShare7.heightAnchor.constraint(equalToConstant: 15).isActive = true
        shareView7.addSubview(rightLabel7)
        rightLabel7.rightAnchor.constraint(equalTo: rightShare7.rightAnchor, constant: -20).isActive = true
        rightLabel7.centerYAnchor.constraint(equalTo: shareView7.centerYAnchor).isActive = true
    }
    
    
}
