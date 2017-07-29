//
//  SettingsViewController.swift
//  Twitter3
//
//  Created by Macintosh HD on 29/07/2017.
//  Copyright © 2017 Macintosh HD. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {

    let navView : UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let navTopItem : UILabel = {
        let lbl = UILabel()
        lbl.text = "Settings"
        lbl.font = UIFont.systemFont(ofSize: 17, weight: 15)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let navRightItem : UILabel = {
        let lbl = UILabel()
        lbl.text = "X"
        lbl.font = UIFont.systemFont(ofSize: 15, weight: 13)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = UIColor(r: 45, g: 151, b: 255)
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
        lbl.text = "Version"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 13, weight: 10)
        return lbl
    }()
    
    let labelRightShare1 : UILabel = {
        let lbl = UILabel()
        lbl.text = "7.3.2"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 12)
        lbl.textColor = UIColor(r: 85, g: 89, b: 92)
        return lbl
    }()
    
    let tableHeader1 : UILabel = {
        let lbl = UILabel()
        lbl.text = "Looking for help?"
        lbl.font = UIFont.systemFont(ofSize: 16, weight: 20)
        lbl.textColor =  UIColor(r: 85, g: 89, b: 92)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let tableHeader2 : UILabel = {
        let lbl = UILabel()
        lbl.text = "Looking for help?"
        lbl.font = UIFont.systemFont(ofSize: 16, weight: 20)
        lbl.textColor =  UIColor(r: 85, g: 89, b: 92)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    var shareCell1 : UITableViewCell = UITableViewCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAllComponentsSettings()
        tableViewComponentsSettings()
        let footerView = UIView()
        tableView.tableFooterView = footerView
        tableView.backgroundColor = UIColor(r: 247, g: 247, b: 247)
    }
    
    func setAllComponentsSettings(){
        //VIEW SETTINGS
        self.view.backgroundColor = UIColor.white
        
        //NAV SETTINGS
        navigationController?.navigationBar.barTintColor = UIColor.white
        
        // NAV UI VIEW
        navigationController?.navigationBar.addSubview(navView)
        navView.leftAnchor.constraint(equalTo: (navigationController?.navigationBar.leftAnchor)!).isActive = true
        navView.topAnchor.constraint(equalTo: (navigationController?.navigationBar.topAnchor)!).isActive = true
        navView.widthAnchor.constraint(equalTo: (navigationController?.navigationBar.widthAnchor)!).isActive = true
        navView.heightAnchor.constraint(equalTo: (navigationController?.navigationBar.heightAnchor)!).isActive = true
        
        // TOP  NAV ITEM
        navView.addSubview(navTopItem)
        navTopItem.centerXAnchor.constraint(equalTo: navView.centerXAnchor).isActive = true
        navTopItem.centerYAnchor.constraint(equalTo: navView.centerYAnchor).isActive = true
        
        //RIGHT NAV ITEM
        navView.addSubview(navRightItem)
        navRightItem.rightAnchor.constraint(equalTo: navView.rightAnchor, constant: -15).isActive = true
        navRightItem.centerYAnchor.constraint(equalTo: navView.centerYAnchor).isActive = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleCancel))
        navRightItem.addGestureRecognizer(tap)
        navRightItem.isUserInteractionEnabled = true
    }
    
    func tableViewComponentsSettings(){
        
        
        shareCell1.addSubview(shareView1)
        shareView1.centerYAnchor.constraint(equalTo: shareCell1.centerYAnchor).isActive = true
        shareView1.centerXAnchor.constraint(equalTo: shareCell1.centerXAnchor).isActive = true
        shareView1.widthAnchor.constraint(equalTo: shareCell1.widthAnchor).isActive = true
        shareView1.heightAnchor.constraint(equalTo: shareCell1.heightAnchor).isActive = true
        shareView1.addSubview(labelShare1)
        labelShare1.leftAnchor.constraint(equalTo: shareView1.leftAnchor, constant: 10).isActive = true
        labelShare1.centerYAnchor.constraint(equalTo: shareView1.centerYAnchor).isActive = true
        shareView1.addSubview(labelRightShare1)
        labelRightShare1.rightAnchor.constraint(equalTo: shareView1.rightAnchor, constant: -10).isActive = true
        labelRightShare1.centerYAnchor.constraint(equalTo: shareView1.centerYAnchor).isActive = true
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch(section) {
        case 0: return 1
        case 1: return 1
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
            case 0: return self.shareCell1
            default: fatalError("Unknown row in section 0")
            }        default: fatalError("Unknown section")
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch(section){
        case 0: return 60
        case 1: return 60
        default: return 50
        }
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        switch(section){
        case 0 : let headerView1 = UIView()
        //VIEW SETTINGS
        headerView1.backgroundColor = UIColor(r: 247, g: 247, b: 247)
        //OTHER SETTINGS
        headerView1.addSubview(tableHeader2)
        //CONSTRAINT TITLE 1
        tableHeader2.leftAnchor.constraint(equalTo: headerView1.leftAnchor, constant: 10).isActive = true
        tableHeader2.centerYAnchor.constraint(equalTo: headerView1.centerYAnchor).isActive = true
        return headerView1
        case 1 : let headerView2 = UIView()
        //VIEW SETTINGS
        headerView2.backgroundColor = UIColor(r: 247, g: 247, b: 247)
        //OTHER SETTINGS
        headerView2.addSubview(tableHeader1)
        //CONSTRAINT TITLE 1
        tableHeader1.leftAnchor.constraint(equalTo: headerView2.leftAnchor, constant: 10).isActive = true
        tableHeader1.centerYAnchor.constraint(equalTo: headerView2.centerYAnchor).isActive = true
        return headerView2
        default: let headerDefault = UIView()
        return headerDefault
        }
    }


}
