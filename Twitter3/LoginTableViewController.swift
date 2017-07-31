//
//  LoginTableViewController.swift
//  Twitter3
//
//  Created by Macintosh HD on 25/07/2017.
//  Copyright © 2017 Macintosh HD. All rights reserved.
//

import UIKit

class LoginTableViewController: UITableViewController,UITextFieldDelegate {
    var formCell : UITableViewCell = UITableViewCell()
    var passwordButtonCount : UInt8 = 0

    let userName : UITextField = {
       let txt = UITextField()
        txt.placeholder = "Phone,email or username"
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.textColor = UIColor(r: 80, g: 174, b: 255)
        txt.font = UIFont.systemFont(ofSize: 15)
        return txt
    }()
    
    let userSeperator : UIView = {
       let view = UIView()
        view.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        view.layer.opacity = 0.5
        view.translatesAutoresizingMaskIntoConstraints = false
    return view
    }()
    
    let password : UITextField = {
       let txt = UITextField()
        txt.placeholder = "Password"
        txt.isSecureTextEntry = true
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.textColor = UIColor(r: 80, g: 174, b: 255)
        txt.font = UIFont.systemFont(ofSize: 15)
        return txt
    }()
    
    let passwordSeperator : UIView = {
       let view = UIView()
        view.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        view.layer.opacity = 0.5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let hidePassword : UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Reveal password", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        btn.titleLabel?.textColor = UIColor(r: 80, g: 174, b: 255)
        btn.addTarget(self, action: #selector(showPassword), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let textRightImage : UIImageView = {
       let imgView = UIImageView(image: UIImage(named: "x"))
        imgView.frame = CGRect(x: 50, y: 0, width: 20, height: 20)
        imgView.translatesAutoresizingMaskIntoConstraints = false
        let gesture = UITapGestureRecognizer(target: self, action: #selector(clearText))
        imgView.addGestureRecognizer(gesture)
        imgView.isUserInteractionEnabled = true
        return imgView
    }()
    
    func clearText(){
        userName.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .none
        userName.delegate = self
        password.delegate = self
        userName.becomeFirstResponder()
        setupAllComponents()
        hidePassword.isHidden = true
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        userName.rightViewMode = .always
        userName.rightView = textRightImage
        
    }

    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.view.endEditing(true)
    }
   
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.black
        header.backgroundView?.backgroundColor = UIColor.white
        header.textLabel?.font = UIFont.systemFont(ofSize: 20, weight: 10)
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Log in to Twitter"
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // USER FIELD SETTINGS
        formCell.addSubview(userName)
        userName.leftAnchor.constraint(equalTo: formCell.leftAnchor, constant: 15).isActive = true
        userName.topAnchor.constraint(equalTo: formCell.topAnchor, constant: 15).isActive = true
        userName.widthAnchor.constraint(equalTo: formCell.widthAnchor).isActive = true
        
        // USER SEPERATOR SETTINGS
        formCell.addSubview(userSeperator)
        userSeperator.leftAnchor.constraint(equalTo: userName.leftAnchor).isActive = true
        userSeperator.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 8).isActive = true
        userSeperator.widthAnchor.constraint(equalTo: formCell.widthAnchor).isActive = true
        userSeperator.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        // PASSWORD FIELD SETTINGS
        formCell.addSubview(password)
        password.leftAnchor.constraint(equalTo: userName.leftAnchor).isActive = true
        password.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 20).isActive = true
        password.widthAnchor.constraint(equalTo: formCell.widthAnchor).isActive = true
        
        // PASSWORD SEPERATOR SETTINGS
        formCell.addSubview(passwordSeperator)
        passwordSeperator.leftAnchor.constraint(equalTo: userName.leftAnchor).isActive = true
        passwordSeperator.topAnchor.constraint(equalTo: password.bottomAnchor,constant:8).isActive = true
        passwordSeperator.widthAnchor.constraint(equalTo: formCell.widthAnchor).isActive = true
        passwordSeperator.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        //PASSWORD HIDE BUTTON SETTINGS
        view.addSubview(hidePassword)
        hidePassword.leftAnchor.constraint(equalTo: view.leftAnchor,constant:-120).isActive = true
        hidePassword.topAnchor.constraint(equalTo: view.topAnchor,constant:140).isActive = true
        hidePassword.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        hidePassword.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        formCell.selectionStyle = .none
        return self.formCell
    }

    
 

}
