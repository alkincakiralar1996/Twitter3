//
//  CountryCode+funcs.swift
//  Twitter3
//
//  Created by Macintosh HD on 30/07/2017.
//  Copyright © 2017 Macintosh HD. All rights reserved.
//

import UIKit
import AEXML

extension CountryCodeViewController{
    func pushBackPage(){
        dismiss(animated: true, completion: nil)
    }
    
    
    func setAllComponentsSettings(){
        //VIEW SETTINGS
        self.view.backgroundColor = UIColor.white
        
        //NAV BAR SETTINGS
        navigationController?.navigationBar.barTintColor = UIColor.white
        
        // TITLE SETTINGS
        navigationController?.navigationBar.topItem?.title = "Calling codes"
        navigationController?.navigationBar.titleTextAttributes =  [ NSFontAttributeName : UIFont.systemFont(ofSize: 17, weight: 15)]
        
        // CANCEL BUTTON SETTINGS
        let btn = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(pushBackPage))
        btn.setTitleTextAttributes([NSFontAttributeName : UIFont.systemFont(ofSize: 15)], for: .normal)
        navigationItem.leftBarButtonItem = btn
    }
    
    /*
    func pushArrayAlphabet(){
        let firstCharachter : CChar = 65
        let secondCharachter : CChar = 90
        
        for item in firstCharachter...secondCharachter{
            let charachter:String = String(format: "%c", item)
            
        }
    }
 */
    
    
    func getXmlDatas(){
        
        guard let xmlPath = Bundle.main.path(forResource: "countries", ofType: "xml"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: xmlPath))
            else {return}
        
        do{
            let options = AEXMLOptions()
            let xmlDoc = try AEXMLDocument(xml: data, options: options)
            
            for item in xmlDoc.root["country"].all!{
                countryNameWithCode.append("\(item["name"].string) +\(item["country-code"].string)")
            }
            
        }
        catch{
            
        }        
    }
    
}
