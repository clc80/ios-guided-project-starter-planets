//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by Claudia Contreras on 2/19/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetsCollectionViewController: UICollectionViewController {
    
    private let planetController = PlanetController()

    // MARK: - Unwind
    @IBAction func unwindToPlanetCollectionViewController(segue: UIStoryboardSegue) {
        
    }

    // MARK: UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return planetController.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "planetCell", for: indexPath) as? PlanetCollectionViewCell else { return UICollectionViewCell() }
    
        let planet = planetController.planets[indexPath.item]
        cell.planet = planet
    
        return cell
    }

}
