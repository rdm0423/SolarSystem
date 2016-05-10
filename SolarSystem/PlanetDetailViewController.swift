//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Ross McIlwaine on 5/10/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    
    var planetTitle: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let planet = planetTitle {
            
            self.navigationItem.title = planet
        }
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
