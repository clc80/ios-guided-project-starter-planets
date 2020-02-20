//
//  PlanetCollectionViewCell.swift
//  Planets
//
//  Created by Claudia Contreras on 2/19/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetCollectionViewCell: UICollectionViewCell {
    
    var planet: Planet? {
        didSet {
            updateViews()
        }
    }
    
    //MARK: - IBOutlets
    @IBOutlet var planetImageView: UIImageView!
    @IBOutlet var planetNameLabel: UILabel!
    
    
    private func updateViews() {
        planetNameLabel.text = planet?.name
        planetImageView.image = planet?.image
    }
    
}
