//
//  AboutInfoCell.swift
//  Settings
//
//  Created by Mohamed Sayed on 15.02.22.
//  Copyright © 2022 mohamed. All rights reserved.
//

import UIKit

class AboutInfoCell: UITableViewCell {
    
    @IBOutlet weak var infoLabel: UILabel!
    
    let info = ["iPhone","15.2", "iPhone 13 Pro", "A 26278", "G9MMMM889QTC"]
    let items = ["0","0", "6", "1", "106.02 GB", "37.22 GB"]
    
    func configure(at indexPath:IndexPath) {
        
        switch indexPath.section {
        case 0:
            switch indexPath.row{
            case 0:
                infoLabel.text = info[indexPath.row]
            case 1:
                infoLabel.text = info[indexPath.row]
            case 2:
                infoLabel.text = info[indexPath.row]
            case 3:
                infoLabel.text = info[indexPath.row]
            case 4:
                infoLabel.text = info[indexPath.row]
            default:
                print("invalid")
            }
        case 1:
            switch indexPath.row{
            case 0:
                infoLabel.text = items[indexPath.row]
            case 1:
                infoLabel.text = items[indexPath.row]
            case 2:
                infoLabel.text = items[indexPath.row]
            case 3:
                infoLabel.text = items[indexPath.row]
            case 4:
                infoLabel.text = items[indexPath.row]
            case 5:
                infoLabel.text = items[indexPath.row]
            default:
                print("invalid")
            }
        default:
            print("invalid")
        }
    }
}
