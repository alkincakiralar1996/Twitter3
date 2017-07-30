//
//  PhoneStepViewController.swift
//  Twitter3
//
//  Created by Macintosh HD on 28/07/2017.
//  Copyright © 2017 Macintosh HD. All rights reserved.
//

import UIKit


class PhoneStepViewController: UIViewController,UITextViewDelegate {

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
        let btn = UIButton(type: .custom)
        btn.setImage(UIImage(named:"back"), for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let headerTitle : UILabel = {
        let lbl = UILabel()
        lbl.text = "What's your number"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = .systemFont(ofSize: 24, weight: 15)
        lbl.textColor = UIColor.black
        return lbl
    }()
    
    let headerSubTitle : UILabel = {
        let t = UILabel()
        t.text = "Don't worry, we'll never display it publicly."
        t.translatesAutoresizingMaskIntoConstraints = false
        t.font = UIFont.systemFont(ofSize: 13)
        return t
    }()
    
    let countyPhoneField : UITextField = {
        let txt = UITextField()
        txt.text = "+90"
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.textColor = UIColor(r: 80, g: 174, b: 255)
        txt.font = UIFont.systemFont(ofSize: 15)
        return txt
    }()
    
    let countryFieldSeperator : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        view.layer.opacity = 0.5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let phoneField : UITextField = {
        let txt = UITextField()
        txt.placeholder = "Phone number"
        txt.keyboardType = .numberPad
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.textColor = UIColor(r: 80, g: 174, b: 255)
        txt.font = UIFont.systemFont(ofSize: 15)
        return txt
    }()
    
    let phoneFieldSeperator : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        view.layer.opacity = 0.5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let politictsTitleView : UITextView = {
       let t = UITextView()
        t.translatesAutoresizingMaskIntoConstraints = false
        t.font = UIFont.systemFont(ofSize: 12)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 2
        let str = NSMutableAttributedString(string: "By signin up, you agree to the Terms of Service and Privacy Policy, including Cookie Use, Others will be able to find you by email or phone number when provided.")
        str.addAttribute(NSParagraphStyleAttributeName, value:paragraphStyle, range:NSMakeRange(0, str.length))
        str.addAttribute(
            NSLinkAttributeName,
            value: "Terms://",
            range: (str.string as NSString).range(of: "Terms of Service"))
        str.addAttribute(
            NSLinkAttributeName,
            value: "Privacy://",
            range: (str.string as NSString).range(of: "Privacy Policy"))
        str.addAttribute(
            NSLinkAttributeName,
            value: "Cookie://",
            range: (str.string as NSString).range(of: "Cookie Use"))
        str.addAttribute(NSForegroundColorAttributeName, value: UIColor.gray , range:NSMakeRange(0, str.length))

        t.isSelectable = true
        t.isEditable = false
        let style = NSMutableParagraphStyle()
        style.lineSpacing = 20
        let attributesStyle = [NSParagraphStyleAttributeName : style]
        t.attributedText = str
        return t
    }()
    
    
    let privacyOptionsButton : UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Privacy options", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        btn.addTarget(self, action: #selector(passPrivacyOptions), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let ballView : UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.gray
        v.translatesAutoresizingMaskIntoConstraints = false
        v.layer.cornerRadius = 5
        v.layer.masksToBounds = true
        return v
    }()
    
    let mailButton : UIButton = {
        let btn = UIButton(type: .system)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        btn.setTitle("Use email instead", for: .normal)
        btn.addTarget(self, action: #selector(passEmail), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
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
        btn.addTarget(self, action: #selector(passNumberVeryPage), for: .touchUpInside)
        return btn
    }()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setAllComponentsSettings()
        politictsTitleView.delegate = self
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        if URL.scheme == "Terms" {
            passTermsofServicePage()
            return false
        }else if URL.scheme == "Privacy"{
            passPrivacyPolicyPage()
            return false
        }
        else if URL.scheme == "Cookie"{
            passCookieUsePage()
            return false
        }
        else {
            return true
        }
    }
    
  }

