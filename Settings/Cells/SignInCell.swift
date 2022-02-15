//
//  SignInCell.swift
//  Settings
//
//  Created by Mohamed Sayed on 04.02.22.
//  Copyright © 2022 mohamed. All rights reserved.
//

import UIKit

class SignInCell: UITableViewCell {
    
    @IBOutlet weak var signInImage: UIImageView!
    @IBOutlet weak var signInLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    func configure() {
        signInLabel.text = "Sign in to your iPhone"
        infoLabel.text = "Set up iCloud, the App store, and more. "
        signInImage.image = UIImage(named: "saiko_img")
        signInImage.layer.cornerRadius = signInImage.frame.height / 2
        signInImage.layer.borderWidth = 0.5
        signInImage.layer.borderColor = UIColor.lightGray.cgColor
    }
    
}
