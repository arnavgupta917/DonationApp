//
//  educationCharities.swift
//  DonationApp
//
//  Created by Arnav Gupta on 8/6/18.
//  Copyright © 2018 NavAura. All rights reserved.
//

import Foundation
import UIKit

class educationCharities: UIViewController {
    
    var tagOfButton = 0
    var donateURL: URL!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "ombre.png")
        backgroundImage.contentMode = UIViewContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
   
    
    @IBAction func pressedCharityButton(_ button: UIButton) {
        tagOfButton = button.tag
        if tagOfButton == 27
        {
            donateURL = URL(string:"https://donate.amnestyusa.org/page/26346/donate/1?transaction.donationAmt=&ac=W18WEBDGEN2")
        }
        
        if tagOfButton == 28
        {
            donateURL = URL(string:"https://donate.barnardos.org.uk/donate")
        }
        
        if tagOfButton == 29
        {
            donateURL = URL(string: "https://www.brightspaces.org/donate-now/")
        }
        
        if tagOfButton == 30
        {
            donateURL = URL(string: "https://www.urban-initiatives.org/checkout/66")
        }
        
        if tagOfButton == 31
        {
            donateURL = URL(string: "http://www.educarecharity.org/donate")
        }
        
        if tagOfButton == 32
        {
            donateURL = URL(string:"https://www.kintera.org/site/c.enKGINNpEoG/b.7868785/k.583C/NEW_amfAR__Donate_Today/apps/ka/sd/donor.asp?c=enKGINNpEoG&b=7868785&en=buILI0OHK8KLL0PKLlL7LcNOJhIWI8PLJiLYLeMVKqIbG")
        }
        
        if tagOfButton == 33
        {
            donateURL = URL(string:"https://thercs.org/support-the-rcs/donate/")
        }
        
        if tagOfButton == 34
        {
            donateURL = URL(string:"https://www.globalgiving.org/projects/indonesia-earthquake-relief-fund/")
        }
        
        if tagOfButton == 35
        {
            donateURL = URL(string:"https://donate.justgiving.com/donation-amount?uri=aHR0cHM6Ly9kb25hdGUtYXBpLmp1c3RnaXZpbmcuY29tL2FwaS9kb25hdGlvbnMvNjBiNzY4YWI0MjhkNDhjNmIzZWE1OWE4Mjg0YmMzOTY=")
        }
        
        if tagOfButton == 36
        {
            donateURL = URL(string: "http://www.kenyaeducationfund.org/donate/")
        }
        
        if tagOfButton == 37
        {
            donateURL = URL(string:"https://www.unicefusa.org/help/donate")
        }
        if UIApplication.shared.canOpenURL(donateURL!) {
            UIApplication.shared.open(donateURL!, options: [:], completionHandler: nil)
            //If you want handle the completion block than
            UIApplication.shared.open(donateURL!, options: [:], completionHandler: { (success) in
                print("Open url : \(success)")
            })
        }
        
    }
    
}


