//
//  ViewController.swift
//  settings
//
//  Created by Mohamed Sayed on 28.01.22.
//  Copyright © 2022 mohamed. All rights reserved.
//

import UIKit

class SettingsScreen: UIViewController {
    
    @IBOutlet weak var settingsTableView: UITableView!
    
    let general = ["General", "Accessibility", "Privacy"]
    
    let accounts = ["Passwords & Accounts"]
    
    let apps = ["Maps", "Safari", "News", "Health", "Shortcuts", "Siri & Search", "Photos", "Game Center"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        settingsTableView.delegate = self
        settingsTableView.dataSource = self
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
}

extension SettingsScreen: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return 1
        case 1:
            return general.count
        case 2:
            return accounts.count
        case 3:
            return apps.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let settingsCell = tableView.dequeueReusableCell(withIdentifier: "settingsCell", for: indexPath)

        let signInCell = tableView.dequeueReusableCell(withIdentifier: "signInCell", for: indexPath) as! SignInCell

        switch indexPath.section {
        case 0:
            signInCell.configure()
        case 1:
            settingsCell.textLabel?.text = general[indexPath.row]
        case 2:
            settingsCell.textLabel?.text = accounts[indexPath.row]
        case 3:
            settingsCell.textLabel?.text = apps[indexPath.row]
        default:
            settingsCell.textLabel?.text = "Invalid"
        }

        if indexPath.section == 0 {
            return signInCell
        }else{
            return settingsCell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.section {
        case 0:
            print ("show sign in screen")
        case 1:
            
            switch indexPath.row {
            case 0:
                if let vc = storyboard?.instantiateViewController(withIdentifier: "GeneralScreen") as? GeneralScreen{
                    navigationController?.pushViewController(vc, animated: true)
                }
                
            case 1:
                print (general[1])
            case 2:
                print (general[2])
            default:
                print ("Invalid")
            }
        case 2:
            print (accounts[indexPath.row])
        case 3:
            switch indexPath.row {
            case 0:
                print (apps[0])
            case 1:
                print (apps[1])
            case 2:
                print (apps[2])
            case 3:
                print (apps[3])
            case 4:
                print (apps[4])
            case 5:
                print (apps[5])
            case 6:
                print (apps[6])
            case 7:
                print (apps[7])
            default:
                print ("Invalid")
            }
        default:
            print ("Invalid")
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
