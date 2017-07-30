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
    
    func setupAllComponents(){
        // NAVIGATION BAR SETTINGS
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.barTintColor = UIColor.white
        let btn = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(handleCancel))
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "common-logo")
        let imgRight = UIImage(named: "login-more")
        let rightBtn = UIBarButtonItem(image: imgRight, style: .plain, target: self, action: #selector(handleSettings))
        navigationItem.titleView = imageView
        navigationItem.leftBarButtonItem = btn
        navigationItem.rightBarButtonItem = rightBtn
        
        //TOOL BAR SETTINGS
        navigationController?.isToolbarHidden = false
        navigationController?.toolbar.barTintColor = UIColor.white
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        navigationController?.toolbar.addSubview(view)
        view.centerXAnchor.constraint(equalTo: (navigationController?.toolbar.centerXAnchor)!).isActive = true
        view.centerYAnchor.constraint(equalTo: (navigationController?.toolbar.centerYAnchor)!).isActive = true
        view.heightAnchor.constraint(equalTo: (navigationController?.toolbar.heightAnchor)!).isActive = true
        view.widthAnchor.constraint(equalTo: (navigationController?.toolbar.widthAnchor)!).isActive = true
        let leftToolBarButton = UIButton(type: .system)
        leftToolBarButton.setTitle("Forgot your password?", for: .normal)
        leftToolBarButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(leftToolBarButton)
        leftToolBarButton.addTarget(self, action: #selector(handleForgotPassword), for: .touchUpInside)
        leftToolBarButton.leftAnchor.constraint(equalTo: view.leftAnchor,constant:10).isActive = true
        leftToolBarButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        leftToolBarButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        let rightToolBarButton = UIButton(type: .system)
        rightToolBarButton.setTitle("Log in", for: .normal)
        rightToolBarButton.backgroundColor = UIColor(r: 80, g: 174, b: 255)
        rightToolBarButton.translatesAutoresizingMaskIntoConstraints = false
        rightToolBarButton.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: 4)
        rightToolBarButton.layer.opacity = 0.8
        rightToolBarButton.layer.cornerRadius = 15
        rightToolBarButton.layer.masksToBounds = true
        rightToolBarButton.tintColor = UIColor.white
        view.addSubview(rightToolBarButton)
        rightToolBarButton.rightAnchor.constraint(equalTo: view.rightAnchor,constant:-10).isActive = true
        rightToolBarButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        rightToolBarButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        rightToolBarButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
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
    
}
