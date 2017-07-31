//
//  Instroduction+funcs.swift
//  Twitter3
//
//  Created by Macintosh HD on 25/07/2017.
//  Copyright © 2017 Macintosh HD. All rights reserved.
//

import UIKit

extension InstroductionViewController{
    func pushLoginPage(){
        let loginController = LoginTableViewController()
        let navController = UINavigationController(rootViewController: loginController)
        present(navController, animated: true, completion: nil)
    }
    
    func pushStartPage(){
        let nameStepController = NameStepViewController()
        let navController = UINavigationController(rootViewController: nameStepController)
        present(navController, animated: true, completion: nil)
    }
    
    func setupAllComponents(){
        view.addSubview(logoImageView)
        view.addSubview(topMiddleTitle)
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
        topMiddleTitle.widthAnchor.constraint(equalToConstant: 265).isActive = true
        topMiddleTitle.heightAnchor.constraint(equalToConstant: 115).isActive = true
        
        //Start Button
        startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        startButton.topAnchor.constraint(equalTo: topMiddleTitle.bottomAnchor,constant:20).isActive = true
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
