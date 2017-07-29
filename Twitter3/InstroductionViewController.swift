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
        lbl.text = "See What's happening"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let bottomMiddleTitle : UILabel = {
        let lbl = UILabel()
        lbl.textColor = UIColor.black
        lbl.font = .systemFont(ofSize: 29, weight: 15)
        lbl.textAlignment = .left
        lbl.text = "in the world right now."
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let startButton : UIButton = {
       let btn = UIButton(type: .system)
        btn.tintColor = UIColor.white
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        btn.backgroundColor = UIColor(r: 0, g: 173, b: 242)
        btn.setTitle("Get started", for: .normal)
        btn.layer.cornerRadius = 12
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
    
    func setupAllComponents(){
        view.addSubview(logoImageView)
        view.addSubview(topMiddleTitle)
        view.addSubview(bottomMiddleTitle)
        view.addSubview(startButton)
        view.addSubview(bottomLabel)
        view.addSubview(bottomButton)
        
        //LOGO
        logoImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        //Top Title
        topMiddleTitle.leftAnchor.constraint(equalTo: logoImageView.leftAnchor).isActive = true
        topMiddleTitle.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant:-60).isActive = true
        topMiddleTitle.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        //Bottom Title
        bottomMiddleTitle.leftAnchor.constraint(equalTo: logoImageView.leftAnchor).isActive = true
        bottomMiddleTitle.topAnchor.constraint(equalTo: topMiddleTitle.bottomAnchor).isActive = true
        bottomMiddleTitle.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        //Start Button
        startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        startButton.topAnchor.constraint(equalTo: bottomMiddleTitle.bottomAnchor,constant:20).isActive = true
        startButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -50).isActive = true
        startButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        //Label Bottom
        bottomLabel.leftAnchor.constraint(equalTo: logoImageView.leftAnchor).isActive = true
        bottomLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant:-30).isActive = true
        bottomLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        //Login Button
        bottomButton.leftAnchor.constraint(equalTo: bottomLabel.rightAnchor,constant:2).isActive = true
        bottomButton.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant:-30).isActive = true
        bottomButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        
 }
    
    

}

