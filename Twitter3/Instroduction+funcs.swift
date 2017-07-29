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
}
