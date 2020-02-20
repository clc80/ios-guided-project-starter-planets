//
//  SettingsViewController.swift
//  Planets
//
//  Created by Claudia Contreras on 2/19/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var plutoToggle: UISwitch!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateViews()
    }

    
    //MARK: - IBActions
    @IBAction func didTogglePluto(_ sender: UISwitch) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(sender.isOn, forKey: .shouldShowPlutoKey)
    }
    
    private func updateViews() {
        plutoToggle.isOn = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
    }

}
