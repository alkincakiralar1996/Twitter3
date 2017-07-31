//
//  ViewController.swift
//  Twitter3
//
//  Created by Macintosh HD on 25/07/2017.
//  Copyright © 2017 Macintosh HD. All rights reserved.
//

import UIKit

class InstroductionViewController: UIViewController {
    
    let logoImageView : UIImageView = {
        let ig = UIImageView()
        ig.image = UIImage(named: "common-logo")
        ig.contentMode = .scaleAspectFill
        ig.translatesAutoresizingMaskIntoConstraints = false
        return ig
    }()
    
    let topMiddleTitle : UILabel = {
        let lbl = UILabel()
        lbl.textColor = UIColor.black
        lbl.textAlignment = .left
        lbl.font = .systemFont(ofSize: 29, weight: 15)
        lbl.text = "See what's happening in the world right now."
        lbl.lineBreakMode = .byWordWrapping
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let startButton : UIButton = {
       let btn = UIButton(type: .system)
        btn.tintColor = UIColor.white
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        btn.backgroundColor = UIColor(r: 0, g: 173, b: 242)
        btn.setTitle("Get started", for: .normal)
        btn.layer.cornerRadius = 14
        btn.layer.masksToBounds = true
        btn.addTarget(self, action: #selector(pushStartPage), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let bottomLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = UIColor.gray
        lbl.font = UIFont.systemFont(ofSize: 11)
        lbl.textAlignment = .left
        lbl.text = "Have an account already?"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let bottomButton : UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = UIColor.white
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 11)
        btn.tintColor = UIColor(r: 80, g: 174, b: 255)
        btn.setTitle("Log in", for: .normal)
        btn.addTarget(self, action: #selector(pushLoginPage), for: .touchUpInside)
        return btn
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        setupAllComponents()
    }
    
    
    

}

