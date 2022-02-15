//
//  AboutScreen.swift
//  Settings
//
//  Created by Mohamed Sayed on 15.02.22.
//  Copyright © 2022 mohamed. All rights reserved.
//

import UIKit

class AboutScreen: UIViewController {

    @IBOutlet weak var aboutTableView: UITableView!
    
    let info = ["Name", "Software Version", "Model Name", "Model Number", "Serial Number"]
    
    let storageItems = ["Songs", "Videos", "Photos", "Applications", "Capacity", "Available"]
    
    let certificate = ["Certificate Trust Settings"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutTableView.delegate = self
        aboutTableView.dataSource = self
        navigationItem.largeTitleDisplayMode = .never
    }
}

extension AboutScreen: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return info.count
        case 1:
            return storageItems.count
        case 2:
            return certificate.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let aboutInfoCell = tableView.dequeueReusableCell(withIdentifier: "aboutInfoCell", for: indexPath)

        let certificateCell = tableView.dequeueReusableCell(withIdentifier: "certificateCell", for: indexPath)

        switch indexPath.section {
        case 0:
            aboutInfoCell.textLabel?.text = info[indexPath.row]
        case 1:
            aboutInfoCell.textLabel?.text = storageItems[indexPath.row]
        case 2:
            certificateCell.textLabel?.text = certificate[indexPath.row]
        default:
            aboutInfoCell.textLabel?.text = "Invalid"
        }
        
        if indexPath.section == 2 {
            return certificateCell
        }else{
            return aboutInfoCell
        }
    }
}
