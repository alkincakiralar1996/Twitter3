//
//  ApiRootViewController.swift
//  Twitter3
//
//  Created by Macintosh HD on 31/07/2017.
//  Copyright © 2017 Macintosh HD. All rights reserved.
//

import UIKit

class ApiRootViewController: UITableViewController {

    let navView : UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let navTopItem : UILabel = {
        let lbl = UILabel()
        lbl.text = "Advanced"
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
    
    let shareView1 : UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.white
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let labelShare1 : UILabel = {
        let lbl = UILabel()
        lbl.text = "API root"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 13, weight: 10)
        return lbl
    }()
    
    let textShare1 : UITextField = {
        let txt = UITextField()
        txt.placeholder = "https://api.twitter.com"
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.textColor = UIColor(r: 80, g: 174, b: 255)
        txt.font = UIFont.systemFont(ofSize: 15)
        return txt
    }()
    
    let tableHeader1 : UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 13)
        lbl.textColor = UIColor(r: 85, g: 89, b: 92)
        lbl.numberOfLines = 0
        lbl.lineBreakMode = .byWordWrapping
        lbl.text = "These fields are intended for twitter proxy servers in cases where Twitter.com is not reachable"
        return lbl
    }()
    
    let shareCell1 : UITableViewCell = UITableViewCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAllComponentsSettings()
        setTableComponenetsSettings()
        let footerView = UIView()
        tableView.tableFooterView = footerView
        tableView.backgroundColor = UIColor(r: 247, g: 247, b: 247)
        tableView.separatorInset = .zero
        textShare1.becomeFirstResponder()
        tableView.allowsSelection = false
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.view.endEditing(true)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch(section) {
        case 0: return 1
        case 1: return 0
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
        default: fatalError("Unknown section")
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch(section){
        case 0: return 0
        case 1: return 80
        default: return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        switch(section){
            
            
        case 1 : let headerView1 = UIView()
        //VIEW SETTINGS
        headerView1.backgroundColor = UIColor(r: 247, g: 247, b: 247)
        //OTHER SETTINGS
        headerView1.addSubview(tableHeader1)
        //CONSTRAINT TITLE 2
        tableHeader1.topAnchor.constraint(equalTo: headerView1.topAnchor, constant: 20).isActive = true
        tableHeader1.leftAnchor.constraint(equalTo: headerView1.leftAnchor, constant: 15).isActive = true
        tableHeader1.rightAnchor.constraint(equalTo: headerView1.rightAnchor, constant: -15).isActive = true
        tableHeader1.centerYAnchor.constraint(equalTo: headerView1.centerYAnchor).isActive = true
        return headerView1
            
            
        default: let headerDefault = UIView()
        return headerDefault
        }
    }
    


    
}
