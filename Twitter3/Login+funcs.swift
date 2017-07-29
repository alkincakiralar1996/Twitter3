//
//  Login+funcs.swift
//  Twitter3
//
//  Created by Macintosh HD on 25/07/2017.
//  Copyright © 2017 Macintosh HD. All rights reserved.
//

import UIKit

extension LoginTableViewController{
    
    override func viewDidAppear(_ animated: Bool) {
        AppUtility.lockOrientation(.portrait)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        AppUtility.lockOrientation(.all)
    }
    
    func handleCancel(){
        let introductionController = InstroductionViewController()
        self.present(introductionController, animated: true, completion: nil)
    }
    
    func handleSettings(){
        let settingsPage = SettingsViewController()
        let navController = UINavigationController(rootViewController: settingsPage)
        present(navController, animated: true, completion: nil)
    }
    
    func handleForgotPassword(){
        let forgotPasswordPage = UINavigationController(rootViewController: ForgotPasswordViewController())
        self.present(forgotPasswordPage, animated: true, completion: nil)
        
    }
    
    
    func handleLogin(){
        
    }
    
    
    func showPassword(){
        if passwordButtonCount == 0{
            password.isSecureTextEntry = true
            passwordButtonCount += 1
            return
        }
        if passwordButtonCount == 1{
            password.isSecureTextEntry = false
            passwordButtonCount = 0
            return
        }
    }
    
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if (userName.text?.characters.count)! > 2 && (password.text?.characters.count)! > 2{
            print("GECTI")
        }
        else{
            print("OLMADIII")
        }
        
        if (password.text?.characters.count)! > 1{
            hidePassword.isHidden = false
        }
        else{
            hidePassword.isHidden = true
        }
        
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.userName{
            self.password.becomeFirstResponder()
        }
        else if textField == self.password{
            self.view.endEditing(true)
        }
        return true
    }
    
}
