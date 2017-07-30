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
        lbl.text = "Advanced"
        lbl.font = UIFont.systemFont(ofSize: 16, weight: 20)
        lbl.textColor =  UIColor(r: 85, g: 89, b: 92)
        lbl.translatesAutoresizingMaskIntoConstraints = false
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
        lbl.text = "support.twitter.com"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 13, weight: 10)
        return lbl
    }()
    
    let rightShare2 : UIImageView = {
       let v = UIImageView()
    v.image = UIImage(named: "rightarrow")
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let shareView3 : UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.white
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let labelShare3 : UILabel = {
        let lbl = UILabel()
        lbl.text = "Legal"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 13, weight: 10)
        return lbl
    }()
    
    let rightShare3 : UIImageView = {
        let v = UIImageView()
        v.image = UIImage(named: "rightarrow")
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let shareView4 : UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.white
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let labelShare4 : UILabel = {
        let lbl = UILabel()
        lbl.text = "Terms of service"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 13, weight: 10)
        return lbl
    }()
    
    let rightShare4 : UIImageView = {
        let v = UIImageView()
        v.image = UIImage(named: "rightarrow")
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let shareView5 : UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.white
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let labelShare5 : UILabel = {
        let lbl = UILabel()
        lbl.text = "Privacy policy"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 13, weight: 10)
        return lbl
    }()
    
    let rightShare5 : UIImageView = {
        let v = UIImageView()
        v.image = UIImage(named: "rightarrow")
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let shareView6 : UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.white
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let labelShare6 : UILabel = {
        let lbl = UILabel()
        lbl.text = "Cookie use"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 13, weight: 10)
        return lbl
    }()
    
    let rightShare6 : UIImageView = {
        let v = UIImageView()
        v.image = UIImage(named: "rightarrow")
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let shareView7 : UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.white
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let labelShare7 : UILabel = {
        let lbl = UILabel()
        lbl.text = "API root"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 13, weight: 10)
        return lbl
    }()
    
    let rightLabel7 : UILabel = {
        let lbl = UILabel()
        lbl.text = "https://api.twitter.com"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 12)
        lbl.textColor = UIColor(r: 85, g: 89, b: 92)
        return lbl
    }()
    
    let rightShare7 : UIImageView = {
        let v = UIImageView()
        v.image = UIImage(named: "rightarrow")
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    
    
    var shareCell1 : UITableViewCell = UITableViewCell()
    var shareCell2 : UITableViewCell = UITableViewCell()
    var shareCell3 : UITableViewCell = UITableViewCell()
    var shareCell4 : UITableViewCell = UITableViewCell()
    var shareCell5 : UITableViewCell = UITableViewCell()
    var shareCell6 : UITableViewCell = UITableViewCell()
    var shareCell7 : UITableViewCell = UITableViewCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAllComponentsSettings()
        tableViewComponentsSettings()
        let footerView = UIView()
        tableView.tableFooterView = footerView
        tableView.backgroundColor = UIColor(r: 247, g: 247, b: 247)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch(section) {
        case 0: return 1
        case 1: return 1
        case 2: return 4
        case 3: return 1
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
            case 0: return self.shareCell2
            default: fatalError("Unknown row in section 0")
            }
        case 2:
            switch(indexPath.row) {
            case 0: return self.shareCell3
            case 1: return self.shareCell4
            case 2: return self.shareCell5
            case 3: return self.shareCell6
            default: fatalError("Unknown row in section 0")
            }
        case 3:
            switch(indexPath.row) {
            case 0: return self.shareCell7
            default: fatalError("Unknown row in section 0")
            }
        default: fatalError("Unknown section")
        }
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch(section){
        case 0 : return 0
        case 1: return 50
        case 2 : return 15
        case 3 : return 50
        default: return 50
        }
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        switch(section){
        case 1 : let headerView2 = UIView()
        //VIEW SETTINGS
        headerView2.backgroundColor = UIColor(r: 247, g: 247, b: 247)
        //OTHER SETTINGS
        headerView2.addSubview(tableHeader1)
        //CONSTRAINT TITLE 1
        tableHeader1.leftAnchor.constraint(equalTo: headerView2.leftAnchor, constant: 10).isActive = true
        tableHeader1.centerYAnchor.constraint(equalTo: headerView2.centerYAnchor,constant:8).isActive = true
        return headerView2
        case 3 : let headerView3 = UIView()
        //VIEW SETTINGS
        headerView3.backgroundColor = UIColor(r: 247, g: 247, b: 247)
        //OTHER SETTINGS
        headerView3.addSubview(tableHeader2)
        //CONSTRAINT TITLE 1
        tableHeader2.leftAnchor.constraint(equalTo: headerView3.leftAnchor, constant: 10).isActive = true
        tableHeader2.centerYAnchor.constraint(equalTo: headerView3.centerYAnchor,constant:8).isActive = true
        return headerView3
        default: let headerDefault = UIView()
        return headerDefault
        }
    }


}
