//
//  healthCharities.swift
//  DonationApp
//
//  Created by Arnav Gupta on 8/6/18.
//  Copyright © 2018 NavAura. All rights reserved.
//

import Foundation
import UIKit

class healthCharities: UIViewController {
    
    var donateURL: URL!
    var tagOfButton = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "ombre.png")
        backgroundImage.contentMode = UIViewContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    
    
    @IBAction func pressedCharityButton(_ button: UIButton) {
        tagOfButton = button.tag
        if tagOfButton == 35
        {
            donateURL = URL(string:"https://act.autismspeaks.org/site/Donation2?df_id=1500&mfc_pref=T&1500.donation=form1&utm_source=AdWords&utm_medium=search&utm_content=FAQ&utm_campaign=TR&s_src=AdWords&s_subsrc=TRFAQ&gclid=Cj0KCQjw45_bBRD_ARIsAJ6wUXT9BtFJNsWn-q0s_nMrcMNL036ybkucz4huQQhxgpWay4qF-MbxYIsaAmXXEALw_wcB")
        }
        
        if tagOfButton == 36
        {
            donateURL = URL(string:"https://donate3.cancer.org/?lang=en&_ga=2.199104815.1694203335.1534021847-2048277889.1533611012&_gac=1.118881403.1534021847.Cj0KCQjw45_bBRD_ARIsAJ6wUXToWlOrhJjdipsoxYeWRnQxwgqp6YPh-PWVrA0A8EbjkOQxYOxVYKkaAoUkEALw_wcB")
        }
        
        if tagOfButton == 37
        {
            donateURL = URL(string: "https://www.caringbridge.org/give")
        }
        
        if tagOfButton == 38
        {
            donateURL = URL(string: "https://secure3.convio.net/ffp/site/Donation2?df_id=29680&29680.donation=form1&gclid=Cj0KCQjw45_bBRD_ARIsAJ6wUXTHDVH4CsZmyUI_Gcak2OZty8Dd9rrhIgKU6_avbdCXP5nYvUMze9gaAqwTEALw_wcB")
        }
        
        if tagOfButton == 39
        {
            donateURL = URL(string: "https://www2.heart.org/site/SPageNavigator/donatenow_heart_alt.html?ploc=9032161&gclid=Cj0KCQjw45_bBRD_ARIsAJ6wUXRMKqlHPt6UTnncZIcSU7ryRd3zeGp4NzSn6ZvkbXuaeRAdYmbeyhYaAiuKEALw_wcB")
        }
        
        if tagOfButton == 40
        {
            donateURL = URL(string:"https://www.kintera.org/site/c.enKGINNpEoG/b.7868785/k.583C/NEW_amfAR__Donate_Today/apps/ka/sd/donor.asp?c=enKGINNpEoG&b=7868785&en=buILI0OHK8KLL0PKLlL7LcNOJhIWI8PLJiLYLeMVKqIbG")
        }
        
        if tagOfButton == 41
        {
            donateURL = URL(string:"https://www.healthwellfoundation.org/donate/")
        }
        
        if tagOfButton == 42
        {
            donateURL = URL(string:"https://www.taskforce.org/donate")
        }
        
        if tagOfButton == 43
        {
            donateURL = URL(string: "https://www.redcross.org/donate/donation")
        }
        
        if tagOfButton == 44
        {
            donateURL = URL(string: "https://secure2.convio.net/alsa/site/Donation2?df_id=37513&mfc_pref=T&37513.donation=form1")
        }
        
        if tagOfButton == 45
        {
            donateURL = URL(string: "https://www.homeandhope.net/donate.html")
        }
        if UIApplication.shared.canOpenURL(donateURL!) {
            UIApplication.shared.open(donateURL!, options: [:], completionHandler: nil)
            UIApplication.shared.open(donateURL!, options: [:], completionHandler: { (success) in
                print("Open url : \(success)")
            })
        }
        
    }
    
}
