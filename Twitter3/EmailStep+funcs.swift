//
//  EmailStep+funcs.swift
//  Twitter3
//
//  Created by Macintosh HD on 29/07/2017.
//  Copyright © 2017 Macintosh HD. All rights reserved.
//

import UIKit

extension EmailStepViewController{
    
    override func viewDidAppear(_ animated: Bool) {
        AppUtility.lockOrientation(.portrait)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        AppUtility.lockOrientation(.all)
    }
    
    
    func handleCancel(){
        let nameStepPage = NameStepViewController()
        let navController = UINavigationController(rootViewController: nameStepPage)
        present(navController, animated: true, completion: nil)
    }
    
    func passPhone(){
        let phoneStepController = PhoneStepViewController()
        let navController = UINavigationController(rootViewController: phoneStepController)
        present(navController, animated: true, completion: nil)
    }
    
    func passTermsofServicePage(){
        let termsPage = TermsofServiceViewController()
        let navController = UINavigationController(rootViewController: termsPage)
        present(navController, animated: true, completion: nil)
    }
    
    func passPrivacyPolicyPage(){
        let privacyPage = PrivacyPolicyViewController()
        let navController = UINavigationController(rootViewController: privacyPage)
        present(navController, animated: true, completion: nil)
    }
    
    func passCookieUsePage(){
        let cookiePage = CookieUseViewController()
        let navController = UINavigationController(rootViewController: cookiePage)
        present(navController, animated: true, completion: nil)
    }
    
    func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0{
                self.navigationController?.toolbar.frame.origin.y -= keyboardSize.height
            }
        }
    }
    
    func keyboardWillHide(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.navigationController?.toolbar.frame.origin.y != 0{
                self.navigationController?.toolbar.frame.origin.y += keyboardSize.height
            }
        }
    }
    
    func passPrivacyOptions(){
        let privacyOptionsController = PrivacyOptionsViewController()
        let navController = UINavigationController(rootViewController: privacyOptionsController)
        present(navController, animated: true, completion: nil)
    }
    
    func passPasswordVeryPage(){
        
    }
    
    func setAllComponentsSettings(){
        //VIEW SETTINGS
        view.backgroundColor = UIColor.white
        
        //NAV SETTINGS
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.barTintColor = UIColor.white
        navigationController?.toolbar.barTintColor = UIColor.white
        
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
        navTopItem.widthAnchor.constraint(equalToConstant: 40).isActive = true
        navTopItem.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        //LEFT NAV ITEM
        navView.addSubview(navleftItem)
        navleftItem.leftAnchor.constraint(equalTo: navView.leftAnchor, constant: 15).isActive = true
        navleftItem.centerYAnchor.constraint(equalTo: navView.centerYAnchor).isActive = true
        navleftItem.addTarget(self, action: #selector(handleCancel), for: .touchUpInside)
        navleftItem.widthAnchor.constraint(equalToConstant: 20).isActive = true
        navleftItem.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        //HEADER TITLE
        view.addSubview(headerTitle)
        headerTitle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        headerTitle.topAnchor.constraint(equalTo: view.topAnchor,constant:85).isActive = true
        
        //SUB TITLE
        view.addSubview(headerSubTitle)
        headerSubTitle.leftAnchor.constraint(equalTo: headerTitle.leftAnchor).isActive = true
        headerSubTitle.topAnchor.constraint(equalTo: headerTitle.bottomAnchor, constant: 10).isActive = true
        
        //COUNTRY PHONE FIELD
        view.addSubview(emailField)
        emailField.leftAnchor.constraint(equalTo: headerSubTitle.leftAnchor).isActive = true
        emailField.topAnchor.constraint(equalTo: headerSubTitle.bottomAnchor, constant: 20).isActive = true
        emailField.widthAnchor.constraint(equalTo: view.widthAnchor,constant:-25).isActive = true
        
        //COUNTRY PHONE SEPERATOR FIELD
        view.addSubview(emailFieldSeperator)
        emailFieldSeperator.leftAnchor.constraint(equalTo: emailField.leftAnchor).isActive = true
        emailFieldSeperator.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 10).isActive = true
        emailFieldSeperator.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        emailFieldSeperator.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        //POLITICS TITLE VIEW SETTINGS
        view.addSubview(politictsTitleView)
        politictsTitleView.leftAnchor.constraint(equalTo: view.leftAnchor,constant:10).isActive = true
        politictsTitleView.topAnchor.constraint(equalTo: emailFieldSeperator.bottomAnchor, constant: 8).isActive = true
        politictsTitleView.widthAnchor.constraint(equalTo: view.widthAnchor,constant:-50).isActive = true
        politictsTitleView.heightAnchor.constraint(equalToConstant: 55).isActive = true
        
        //PRIVACY BUTTON SETTINGS
        view.addSubview(privacyOptionsButton)
        privacyOptionsButton.leftAnchor.constraint(equalTo: view.leftAnchor,constant:15).isActive = true
        privacyOptionsButton.topAnchor.constraint(equalTo: politictsTitleView.bottomAnchor, constant: 5).isActive = true
        
        //BALL VIEW SETTINGS
        view.addSubview(ballView)
        ballView.leftAnchor.constraint(equalTo: privacyOptionsButton.rightAnchor, constant: 10).isActive = true
        ballView.topAnchor.constraint(equalTo:privacyOptionsButton.bottomAnchor,constant : -15).isActive = true
        ballView.widthAnchor.constraint(equalToConstant: 5).isActive = true
        ballView.heightAnchor.constraint(equalToConstant: 5).isActive = true
        
        // EMAIL BUTTON SETTINGS
        view.addSubview(phoneButton)
        phoneButton.leftAnchor.constraint(equalTo: ballView.rightAnchor,constant: 10).isActive = true
        phoneButton.topAnchor.constraint(equalTo: politictsTitleView.bottomAnchor, constant: 5).isActive = true
        
        //NAV BOTTOM UI VIEW
        navigationController?.isToolbarHidden = false
        navigationController?.toolbar.layer.borderWidth = 0.3
        navigationController?.toolbar.layer.borderColor = UIColor.gray.cgColor
        navigationController?.toolbar.addSubview(bottomNavView)
        bottomNavView.centerXAnchor.constraint(equalTo: (navigationController?.toolbar.centerXAnchor)!).isActive = true
        bottomNavView.centerYAnchor.constraint(equalTo: (navigationController?.toolbar.centerYAnchor)!).isActive = true
        bottomNavView.heightAnchor.constraint(equalTo: (navigationController?.toolbar.heightAnchor)!).isActive = true
        bottomNavView.widthAnchor.constraint(equalTo: (navigationController?.toolbar.widthAnchor)!).isActive = true
        
        //NAV RIGHT BUTTON
        bottomNavView.addSubview(rightNavButton)
        rightNavButton.rightAnchor.constraint(equalTo: bottomNavView.rightAnchor,constant:-10).isActive = true
        rightNavButton.centerYAnchor.constraint(equalTo: bottomNavView.centerYAnchor).isActive = true
        rightNavButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        rightNavButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
    }
    
}
