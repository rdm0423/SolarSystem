//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Ross McIlwaine on 5/10/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    
    var planet: Planet?
    
    @IBOutlet weak var imagePlanetImageView: UIImageView!
    @IBOutlet weak var planetDiameterLabel: UILabel!
    @IBOutlet weak var planetLengthLabel: UILabel!
    @IBOutlet weak var planetDistanceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let planet = planet {
            updateWithPlanet(planet)
        }
    }
    
    func updateWithPlanet(planet: Planet) {
        
        self.navigationItem.title = planet.name
        imagePlanetImageView.image = UIImage(named: planet.imageName)
        planetDiameterLabel.text = "\(planet.diameter) km"
        planetLengthLabel.text = "\(planet.dayLength) hours"
        planetDistanceLabel.text = "\(planet.millionKMsFromSun) 10^6km"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
