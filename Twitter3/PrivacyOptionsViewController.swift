//
//  PrivacyOptionsViewController.swift
//  Twitter3
//
//  Created by Macintosh HD on 29/07/2017.
//  Copyright © 2017 Macintosh HD. All rights reserved.
//

import UIKit

class PrivacyOptionsViewController: UITableViewController{

    let navView : UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let navTopItem : UILabel = {
        let lbl = UILabel()
        lbl.text = "Privacy options"
        lbl.font = UIFont.systemFont(ofSize: 17, weight: 15)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let navRightItem : UILabel = {
        let lbl = UILabel()
        lbl.text = "Done"
        lbl.font = UIFont.systemFont(ofSize: 15, weight: 13)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = UIColor(r: 45, g: 151, b: 255)
        return lbl
    }()
    
    let tableHeader1 : UILabel = {
       let lbl = UILabel()
        lbl.text = "Privacy"
        lbl.font = UIFont.systemFont(ofSize: 16, weight: 20)
        lbl.textColor =  UIColor(r: 85, g: 89, b: 92)
        lbl.translatesAutoresizingMaskIntoConstraints = false
       return lbl
    }()
    
    let shareView1 : UIView = {
       let v = UIView()
        v.backgroundColor = UIColor.white
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let labelShare1 : UILabel = {
        let lbl = UILabel()
        lbl.text = "Let others find me by my email address"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 13, weight: 10)
        return lbl
    }()
    
    let switchButton1 : UISwitch = {
       let sw = UISwitch()
        sw.isOn = true
        sw.translatesAutoresizingMaskIntoConstraints = false
        return sw
    }()
    
    let tableHeader2 : UILabel = {
       let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 12)
        lbl.textColor = UIColor(r: 85, g: 89, b: 92)
        lbl.numberOfLines = 0
        lbl.lineBreakMode = .byWordWrapping
        lbl.text = "People who have your email address will be able to connect with you on Twitter"
        return lbl
    }()
    
    let shareView2 : UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.white
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let labelShare2 : UILabel = {
        let lbl = UILabel()
        lbl.text = "Let others find me by my phone number"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 13, weight: 10)
        return lbl
    }()
    
    let switchButton2 : UISwitch = {
        let sw = UISwitch()
        sw.isOn = true
        sw.translatesAutoresizingMaskIntoConstraints = false
        return sw
    }()
    
    let tableHeader3 : UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 12)
        lbl.textColor = UIColor(r: 85, g: 89, b: 92)
        lbl.numberOfLines = 0
        lbl.lineBreakMode = .byWordWrapping
        lbl.text = "People who have your phone number will be able to connect with you on Twitter"
        return lbl
    }()
    
    var shareCell1: UITableViewCell = UITableViewCell()
    var shareCell2 : UITableViewCell = UITableViewCell()
    var shareCell3 : UITableViewCell = UITableViewCell()
    override func viewDidLoad() {
        super.viewDidLoad()
        setAllComponentsSettings()
        setTableViewComponentsSettings()
        tableView.delegate = self
        tableView.dataSource = self
        let footerView = UIView()
        tableView.tableFooterView = footerView
        tableView.backgroundColor = UIColor(r: 247, g: 247, b: 247)
    }
    
    


    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch(section) {
        case 0: return 1
        case 1: return 1
        case 2: return 0
        default: fatalError("Unknown number of sections")
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch(indexPath.section) {
        case 0:
            switch(indexPath.row) {
            case 0: return self.shareCell1
            default: fatalError("Unknown row in section 0")
            }
        case 1:
            switch(indexPath.row) {
            case 0: return self.shareCell2      // section 1, row 0 is the share option
            default: fatalError("Unknown row in section 1")
            }
        default: fatalError("Unknown section")
        }
    }
    

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch(section){
        case 0: return 50
        case 1: return 50
        case 2: return 50
        default: return 50
        }
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        switch(section){
            
        case 0 : let headerView1 = UIView()
        //VIEW SETTINGS
        headerView1.backgroundColor = UIColor(r: 247, g: 247, b: 247)
        //OTHER SETTINGS
        headerView1.addSubview(tableHeader1)
        //CONSTRAINT TITLE 1
        tableHeader1.leftAnchor.constraint(equalTo: headerView1.leftAnchor, constant: 10).isActive = true
        tableHeader1.centerYAnchor.constraint(equalTo: headerView1.centerYAnchor).isActive = true
        return headerView1
            
            
        case 1 : let headerView2 = UIView()
        //VIEW SETTINGS
        headerView2.backgroundColor = UIColor(r: 247, g: 247, b: 247)
        //OTHER SETTINGS
        headerView2.addSubview(tableHeader2)
        //CONSTRAINT TITLE 2
        tableHeader2.leftAnchor.constraint(equalTo: headerView2.leftAnchor, constant: 10).isActive = true
        tableHeader2.rightAnchor.constraint(equalTo: headerView2.rightAnchor, constant: -30).isActive = true
        tableHeader2.centerYAnchor.constraint(equalTo: headerView2.centerYAnchor).isActive = true
        return headerView2
            
            
        case 2: let headerView3 = UIView()
        //VIEW SETTINGS
        headerView3.backgroundColor = UIColor(r: 247, g: 247, b: 247)
        //OTHER SETTINGS
        headerView3.addSubview(tableHeader3)
        //CONSTRAINT TITLE 3
        tableHeader3.leftAnchor.constraint(equalTo: headerView3.leftAnchor, constant: 10).isActive = true
        tableHeader3.rightAnchor.constraint(equalTo: headerView3.rightAnchor, constant: -30).isActive = true
        tableHeader3.centerYAnchor.constraint(equalTo: headerView3.centerYAnchor).isActive = true
        return headerView3
        
            
        default: let headerDefault = UIView()
        return headerDefault
        }
    }
 
    
    
}
