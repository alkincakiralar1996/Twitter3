//
//  PrivacyPolicy+funcs.swift
//  Twitter3
//
//  Created by Macintosh HD on 28/07/2017.
//  Copyright © 2017 Macintosh HD. All rights reserved.
//

import UIKit

extension PrivacyPolicyViewController{
    
    func pushNumberPage(){
        let numberPage = PhoneStepViewController()
        let navControler = UINavigationController(rootViewController: numberPage)
        present(navControler, animated: true, completion: nil)
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
        navView.addSubview(navleftItem)
        navleftItem.leftAnchor.constraint(equalTo: navView.leftAnchor, constant: 15).isActive = true
        navleftItem.centerYAnchor.constraint(equalTo: navView.centerYAnchor).isActive = true
        navleftItem.addTarget(self, action: #selector(pushNumberPage), for: .touchUpInside)
        navleftItem.widthAnchor.constraint(equalToConstant: 20).isActive = true
        navleftItem.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    func setWebViewSettings(){
        //WEB VIEW SEETTING
        let myWebView:UIWebView = UIWebView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        
        self.view.addSubview(myWebView)
        
        myWebView.delegate = self
        
        myWebView.loadRequest(URLRequest(url: URL(string: "https://twitter.com/en/privacy")!))
    }
    
}
