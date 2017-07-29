//
//  ForgotPassword+funcs.swift
//  Twitter3
//
//  Created by Macintosh HD on 26/07/2017.
//  Copyright © 2017 Macintosh HD. All rights reserved.
//
import UIKit
extension ForgotPasswordViewController{
    
    override func viewDidAppear(_ animated: Bool) {
        AppUtility.lockOrientation(.portrait)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        AppUtility.lockOrientation(.all)
    }
    
    func pushLoginPage(){
        let loginPage = LoginTableViewController()
        let navLoginPage = UINavigationController(rootViewController: loginPage)
        self.present(navLoginPage, animated: true, completion: nil)
    }
    
    func searchUserName(){
        if (userNameTextField.text?.isEmpty)!{
            userNameTextField.layer.borderColor = (UIColor.red).cgColor
            userNameTextField.textColor = UIColor.red
            
            view.addSubview(warningLabel)
            warningLabel.leftAnchor.constraint(equalTo: userNameTextField.leftAnchor).isActive = true
            warningLabel.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 10).isActive = true
            warningLabel.text = "Enter your e-mail adress,phone number or user name"
            warningLabel.textColor = UIColor.red
            
            searchButtonTopConstant?.isActive = false
            searchButtonTopConstant = searchButton.topAnchor.constraint(equalTo: warningLabel.bottomAnchor, constant: 20)
            searchButtonTopConstant?.isActive = true
        }
        else{
            userNameTextField.layer.borderColor = (UIColor(r: 80, g: 174, b: 255)).cgColor
            userNameTextField.textColor = UIColor.black
            
            warningLabel.text = ""
            
            searchButtonTopConstant?.isActive = false
            searchButtonTopConstant = searchButton.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 20)
            searchButtonTopConstant?.isActive = true
        }
    }
}
