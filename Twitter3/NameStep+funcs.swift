//
//  NameStep+funcs.swift
//  Twitter3
//
//  Created by Macintosh HD on 27/07/2017.
//  Copyright © 2017 Macintosh HD. All rights reserved.
//

import UIKit

extension NameStepViewController{
    
    override func viewDidAppear(_ animated: Bool) {
        AppUtility.lockOrientation(.portrait)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        AppUtility.lockOrientation(.all)
    }
    
    func passPhoneStepPage(){
        let phoneStepPage = PhoneStepViewController()
        let navController = UINavigationController(rootViewController: phoneStepPage)
        present(navController, animated: true, completion: nil)
    }
    
    func handleCancel(){
        let  instroductionPageController = InstroductionViewController()
        present(instroductionPageController, animated: true, completion: nil)
    }
    
    func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.navigationController?.toolbar.frame.origin.y == 623{
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

    func nameFieldValueControl(){
        if textState == false{
            rightNavButton.isEnabled = true
            nameSurnameField.rightViewMode = UITextFieldViewMode.always
            nameSurnameField.rightView = springImageView
            springImageView.force = 2
            springImageView.duration = 1.5
            springImageView.animation = "fadeIn"
            springImageView.curve = "easeIn"
            springImageView.animate()
            textState = true
        }
        if textState == true && nameSurnameField.text?.characters.count == 0 {
            rightNavButton.isEnabled = false
            springImageView.force = 2
            springImageView.duration = 1.5
            springImageView.animation = "fadeOut"
            springImageView.curve = "easeOut"
            springImageView.animate()
            textState = false
        }
    }
    
    
    // COMPONENTS SETINGS
    func setAllComponentsSettings(){
        //VIEW SETTINGS
        self.view.backgroundColor = UIColor.white

        // NAV SETTINGS
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
        
        // TOP TITLE
        view.addSubview(topTitle)
        topTitle.leftAnchor.constraint(equalTo: view.leftAnchor,constant:15).isActive = true
        topTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 85).isActive = true
        
        //NAME FIELD
        view.addSubview(nameSurnameField)
        nameSurnameField.leftAnchor.constraint(equalTo: topTitle.leftAnchor).isActive = true
        nameSurnameField.topAnchor.constraint(equalTo: topTitle.bottomAnchor, constant: 25).isActive = true
        nameSurnameField.widthAnchor.constraint(equalTo: view.widthAnchor,constant:-25).isActive = true
        
        //SEPERATOR FIELD
        view.addSubview(fieldSeperator)
        fieldSeperator.leftAnchor.constraint(equalTo: nameSurnameField.leftAnchor).isActive = true
        fieldSeperator.topAnchor.constraint(equalTo: nameSurnameField.bottomAnchor, constant: 10).isActive = true
        fieldSeperator.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        fieldSeperator.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        //NAV BOTTOM UI VIEW
        navigationController?.isToolbarHidden = false
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
