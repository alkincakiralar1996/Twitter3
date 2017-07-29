//
//  TermsofServiceViewController.swift
//  Twitter3
//
//  Created by Macintosh HD on 28/07/2017.
//  Copyright © 2017 Macintosh HD. All rights reserved.
//

import UIKit

class TermsofServiceViewController: UIViewController,UIWebViewDelegate {

    let navView : UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let navTopItem : UILabel = {
        let lbl = UILabel()
        lbl.text = "Terms of Service"
        lbl.font = UIFont.systemFont(ofSize: 17, weight: 15)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let navleftItem : UIButton = {
        let btn = UIButton(type: .custom)
        btn.setImage(UIImage(named:"back"), for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAllComponentsSettings()
        setWebViewSettings()
    }

}
