//
//  ApiRoot+funcs.swift
//  Twitter3
//
//  Created by Macintosh HD on 31/07/2017.
//  Copyright © 2017 Macintosh HD. All rights reserved.
//

import UIKit

extension ApiRootViewController{
    
    func handleCancel(){
        dismiss(animated: true, completion: nil)
    }
    
    func setTableComponenetsSettings(){
        
        // CELL 1 SETTINGS
        shareCell1.addSubview(shareView1)
        shareView1.centerYAnchor.constraint(equalTo: shareCell1.centerYAnchor).isActive = true
        shareView1.centerXAnchor.constraint(equalTo: shareCell1.centerXAnchor).isActive = true
        shareView1.widthAnchor.constraint(equalTo: shareCell1.widthAnchor).isActive = true
        shareView1.heightAnchor.constraint(equalTo: shareCell1.heightAnchor).isActive = true
        shareView1.addSubview(labelShare1)
        labelShare1.leftAnchor.constraint(equalTo: shareView1.leftAnchor, constant: 10).isActive = true
        labelShare1.centerYAnchor.constraint(equalTo: shareView1.centerYAnchor).isActive = true
        shareView1.addSubview(textShare1)
        textShare1.leftAnchor.constraint(equalTo: labelShare1.rightAnchor, constant: 10).isActive = true
        textShare1.centerYAnchor.constraint(equalTo: shareView1.centerYAnchor).isActive = true
        textShare1.widthAnchor.constraint(equalTo: shareView1.widthAnchor).isActive = true
        
    }
    
    func setAllComponentsSettings(){
        //VIEW SETTINGS
        view.backgroundColor = UIColor.white
        
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
        navView.addSubview(navleftItem)
        navleftItem.leftAnchor.constraint(equalTo: navView.leftAnchor, constant: 15).isActive = true
        navleftItem.centerYAnchor.constraint(equalTo: navView.centerYAnchor).isActive = true
        navleftItem.addTarget(self, action: #selector(handleCancel), for: .touchUpInside)
        navleftItem.widthAnchor.constraint(equalToConstant: 20).isActive = true
        navleftItem.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
}
