//
//  ForgotPasswordViewController.swift
//  Twitter3
//
//  Created by Macintosh HD on 26/07/2017.
//  Copyright © 2017 Macintosh HD. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    let headerTitle : UILabel = {
       let t = UILabel()
        t.text = "Find your twitter account"
        t.font = UIFont.systemFont(ofSize: 18)
        t.textColor = UIColor(r: 154, g: 155, b: 157)
        t.translatesAutoresizingMaskIntoConstraints = false
        return t
    }()
    
    
    let subTitle : UILabel = {
       let t = UILabel()
        t.text = "Enter your e-mail adress,phone number or user name"
        t.translatesAutoresizingMaskIntoConstraints = false
        t.font = UIFont.systemFont(ofSize: 13)
        return t
    }()
    
    let userNameTextField : UITextField = {
       let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.textColor = UIColor.black
        tf.borderStyle = .line
        tf.layer.masksToBounds = true
        tf.layer.borderWidth = 1
        tf.layer.cornerRadius = 5
        tf.layer.borderColor = (UIColor(r: 80, g: 174, b: 255)).cgColor
        return tf
    }()
    
    let searchButton : UIButton = {
       let btn = UIButton(type: .system)
        btn.setTitle("Search", for: .normal)
        btn.backgroundColor = UIColor(r: 0, g: 173, b: 242)
        btn.addTarget(self, action: #selector(searchUserName), for: .touchUpInside)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: 10)
        btn.tintColor = UIColor.white
        btn.layer.masksToBounds = true
        btn.layer.cornerRadius = 3
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
        
    }()
    
    let warningLabel : UILabel = {
       let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = UIColor.red
        lbl.text = "We need this information to find your accound"
        lbl.font = UIFont.systemFont(ofSize: 13)
        return lbl
    }()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupOtherComponents()
    }
    
    var searchButtonTopConstant : NSLayoutConstraint?
    func setupOtherComponents(){
        //VIEW SETTINGS
        view.backgroundColor = UIColor.white
        
        //NAV BAR SETTINGS
        navigationController?.navigationBar.barTintColor = UIColor.white
        
        // TITLE SETTINGS
        navigationController?.navigationBar.topItem?.title = "Reset Password"
        navigationController?.navigationBar.titleTextAttributes =  [ NSFontAttributeName : UIFont.systemFont(ofSize: 17, weight: 15)]
        
        // CANCEL BUTTON SETTINGS
        let btn = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(pushLoginPage))
        btn.setTitleTextAttributes([NSFontAttributeName : UIFont.systemFont(ofSize: 15)], for: .normal)
        navigationItem.leftBarButtonItem = btn
        
        
        // HEADER TITLE
        view.addSubview(headerTitle)
        headerTitle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        headerTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: (navigationController?.navigationBar.layer.frame.height)! + 40).isActive = true

        //SUB TITLE
        view.addSubview(subTitle)
        subTitle.leftAnchor.constraint(equalTo: headerTitle.leftAnchor).isActive = true
        subTitle.topAnchor.constraint(equalTo: headerTitle.bottomAnchor, constant: 20).isActive = true
        
        
        //TEXT FIELD
        view.addSubview(userNameTextField)
        userNameTextField.leftAnchor.constraint(equalTo: subTitle.leftAnchor).isActive = true
        userNameTextField.topAnchor.constraint(equalTo: subTitle.bottomAnchor,constant : 20).isActive = true
        userNameTextField.widthAnchor.constraint(equalToConstant:  (view.frame.width / 2) + (view.frame.width / 3)).isActive = true
        userNameTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //BUTTON FIELD
        view.addSubview(searchButton)
        searchButton.leftAnchor.constraint(equalTo: userNameTextField.leftAnchor).isActive = true
        searchButtonTopConstant = searchButton.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 30)
        searchButtonTopConstant?.isActive = true
        searchButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        searchButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
 
 }

}
