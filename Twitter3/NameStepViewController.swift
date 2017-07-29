//
//  NameStepViewController.swift
//  Twitter3
//
//  Created by Macintosh HD on 27/07/2017.
//  Copyright © 2017 Macintosh HD. All rights reserved.
//

import UIKit
import Spring
//deneme
class NameStepViewController: UIViewController {
    
    var textState:Bool = false

    let navView : UIView = {
       let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let navTopItem : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "common-logo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let navleftItem : UIButton = {
       let btn = UIButton(type: .system)
        btn.setTitle("Cancel", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let topTitle : UILabel = {
       let lbl = UILabel()
        lbl.text = "Hi. What's your name?"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = .systemFont(ofSize: 24, weight: 15)
        lbl.textColor = UIColor.black
        return lbl
    }()
    
    let springImageView : SpringImageView = {
       let image = SpringImageView()
        image.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        let i = UIImage(named: "accept")
        image.image = i
        return image
    }()
    
    let nameSurnameField : UITextField = {
        let txt = UITextField()
        txt.placeholder = "Name and surname"
        txt.isSecureTextEntry = true
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.textColor = UIColor(r: 80, g: 174, b: 255)
        txt.font = UIFont.systemFont(ofSize: 15)
        txt.addTarget(self, action: #selector(nameFieldValueControl), for: .editingChanged)
        return txt
    }()
    
    let fieldSeperator : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        view.layer.opacity = 0.5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let bottomNavView : UIView = {
       let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let rightNavButton : UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Next", for: .normal)
        btn.backgroundColor = UIColor(r: 80, g: 174, b: 255)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: 4)
        btn.layer.cornerRadius = 15
        btn.layer.masksToBounds = true
        btn.isEnabled = false
        btn.tintColor = UIColor.white
        btn.addTarget(self, action: #selector(passPhoneStepPage), for: .touchUpInside)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setAllComponentsSettings()
        NotificationCenter.default.addObserver(self, selector: #selector(NameStepViewController.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(NameStepViewController.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    }
