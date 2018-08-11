//
//  OptionController.swift
//  DonationApp
//
//  Created by Arnav Gupta on 8/8/18.
//  Copyright © 2018 NavAura. All rights reserved.
//

import Foundation
import UIKit

class OptionController: UIViewController {
    
    @IBOutlet weak var donateButton: UIButton!
    @IBOutlet weak var logButton: UIButton!
    @IBOutlet weak var randomCharityButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "ombre.png")
        backgroundImage.contentMode = UIViewContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        setUpViews()
    }
    
    func setUpViews() {
        donateButton.layer.cornerRadius = 8
        donateButton.layer.masksToBounds = true
        
        logButton.layer.cornerRadius = 8
        logButton.layer.masksToBounds = true
        
        randomCharityButton.layer.cornerRadius = 8
        randomCharityButton.layer.masksToBounds = true
        
    }
    
    @IBAction func donateButtonPressed (_ segue: UIStoryboardSegue) {
        performSegue(withIdentifier: "toCharitySelector", sender: self)
        
    }    
    @IBAction func logButtonPressed (_ segue: UIStoryboardSegue) {
        performSegue(withIdentifier: "toDonationTracker", sender: self)
    }
    
    @IBAction func unwindToOption(_ segue: UIStoryboardSegue) {
       // performSegue(withIdentifier: "unwindToMain", sender: self)
    }
    
    
    @IBAction func randomCharityButtonPressed(_ segue: UIStoryboardSegue) {
        performSegue(withIdentifier: "toRandomController", sender: self)
    }
    
    
    
    
}
