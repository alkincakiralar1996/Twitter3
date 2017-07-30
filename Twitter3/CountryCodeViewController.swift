//
//  CountryCodeViewController.swift
//  Twitter3
//
//  Created by Macintosh HD on 30/07/2017.
//  Copyright © 2017 Macintosh HD. All rights reserved.
//

import UIKit

class CountryCodeViewController: UITableViewController {

    var alphabet : NSArray = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    var countryNameWithCode = [String]()
    
    let tableHeader1 : UILabel = {
        let lbl = UILabel()
        //lbl.text = "A"
        lbl.font = UIFont.systemFont(ofSize: 16, weight: 20)
        lbl.textColor =  UIColor(r: 85, g: 89, b: 92)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAllComponentsSettings()
        //pushArrayAlphabet()
        getXmlDatas()
    }

    /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        return countryNameWithCode.count
    }*/
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    /*
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch(section) {
        case 0: return 1
        default: fatalError("Unknown number of sections")
        }
    }
 */
    /*
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryNameWithCode.count
    }
 */
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = UITableViewCell()
        cell.textLabel?.text = countryNameWithCode[indexPath.row]
        cell.textLabel?.font = UIFont.systemFont(ofSize: 14, weight: 6)
        return cell
    }
 */
    
    /*YAN MENU
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return self.alphabet as? [String]
    }*/
    
    /*
    public override func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int
    {
        return index
    }*/
    
    public override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return alphabet.object(at: section) as? String
    }
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        //let predicate = NSPredicate(format: "SELF beginswith[c] %@", alphabet.object(at: section) as! CVarArg)
        //let arrContacts = (countryNameWithCode as NSArray).filtered(using: predicate)
        return countryNameWithCode.count;
        
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
       // let cell : UITableViewCell = self.tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! UITableViewCell
        let cell : UITableViewCell = UITableViewCell()
       // let predicate = NSPredicate(format: "SELF beginswith[c] %@", alphabet.object(at: indexPath.section) as! CVarArg)
        //let cont = (countryNameWithCode as NSArray).filtered(using: predicate) as NSArray
        cell.textLabel?.text = countryNameWithCode[indexPath.row]
        return cell
    }
    
    /*
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor(r: 247, g: 247, b: 247)
        headerView.addSubview(tableHeader1)
        
        tableHeader1.leftAnchor.constraint(equalTo: headerView.leftAnchor, constant: 10).isActive = true
        tableHeader1.centerYAnchor.constraint(equalTo: headerView.centerYAnchor).isActive = true
        
        

        /*
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
        default: let headerDefault = UIView()
        return headerDefault
        }
 */
        return headerView

    }
*/
}
