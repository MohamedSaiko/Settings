//
//  GeneralScreen.swift
//  Settings
//
//  Created by Mohamed Sayed on 04.02.22.
//  Copyright © 2022 mohamed. All rights reserved.
//

import UIKit

class GeneralScreen: UIViewController {
    
    @IBOutlet weak var generalTableView: UITableView!
    
    let about = ["About"]
    
    let keyboard = ["Keyboard", "Fonts", "Language & Region", "Dictionary"]
    
    let reset = ["Reset"]

    override func viewDidLoad() {
        super.viewDidLoad()
        generalTableView.delegate = self
        generalTableView.dataSource = self
        navigationItem.largeTitleDisplayMode = .never
    }
}

extension GeneralScreen: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return about.count
        case 1:
            return keyboard.count
        case 2:
            return reset.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let generalCell = tableView.dequeueReusableCell(withIdentifier: "generalCell", for: indexPath)
        
        switch indexPath.section {
        case 0:
            generalCell.textLabel?.text = about[indexPath.row]
        case 1:
            generalCell.textLabel?.text = keyboard[indexPath.row]
        case 2:
            generalCell.textLabel?.text = reset[indexPath.row]
        default:
            print("invalid")
        }
        
        return generalCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.section {
        case 0:
            if let vc = storyboard?.instantiateViewController(withIdentifier: "AboutScreen") as? AboutScreen{
                navigationController?.pushViewController(vc, animated: true)
            }
        case 1:
            switch indexPath.row {
            case 0:
                print (keyboard[indexPath.row])
            case 1:
                print (keyboard[indexPath.row])
            case 2:
                print (keyboard[indexPath.row])
            case 3:
                print (keyboard[indexPath.row])
            default:
                print ("invalid")
            }
        case 2:
            print (reset[indexPath.row])
        default:
            print ("invalid")
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
