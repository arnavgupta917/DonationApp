//
//  environmentalCharities.swift
//  DonationApp
//
//  Created by Arnav Gupta on 8/6/18.
//  Copyright © 2018 NavAura. All rights reserved.
//

import Foundation
import UIKit

class environmentalCharities: UIViewController {
    
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
        if tagOfButton == 19
        {
            donateURL = URL(string:"https://secure2.convio.net/cintl/site/Donation2?df_id=10265&10265.donation=form1")
        }
        
        if tagOfButton == 20
        {
            donateURL = URL(string:"https://membership.onlineaction.org/site/Donation2?df_id=18588&18588.donation=form1&addl_info=nav-button&conversion_pg=www.edf.org%2Fdonate-online")
        }
        
        if tagOfButton == 21
        {
            donateURL = URL(string: "https://sierra.secure.force.com/donate/rc_connect__campaign_designform?id=701310000008oRx&_ga=2.40316386.1716282230.1533611422-717325826.1533611422#!form=00P3100000SLL0eEAH")
        }
        
        if tagOfButton == 22
        {
            donateURL = URL(string: "https://secure3.convio.net/ra/site/Donation2;jsessionid=00000000.app311a?idb=421741145&df_id=6223&6223.donation=form1&mfc_pref=T&NONCE_TOKEN=50D97DF7FEDA479FCA22F0CA46003C18&_ga=2.109394565.1072951160.1533611468-960328873.1533611468&6223_donation=form1")
        }
        
        if tagOfButton == 23
        {
            donateURL = URL(string: "https://support.nature.org/site/Donation2?10420.donation=form1&df_id=10420&intc=nature.tnav.button.donate")
        }
        
        if tagOfButton == 24
        {
            donateURL = URL(string:"https://act.nrdc.org/donate/one-time-gift/")
        }
        
        if tagOfButton == 25
        {
            donateURL = URL(string:"https://support.bestfriends.org/site/Donation2;jsessionid=00000000.app222b?df_id=1949&mfc_pref=T&1949.donation=form1&_ga=2.130320399.1806043055.1533581390-1955164352.1533581390&_gac=1.181844437.1533581392.Cj0KCQjw45_bBRD_ARIsAJ6wUXQFISXOffQ1CQGcWPoRwlB7F45Gi-YbBejlBtEwvdnd67g0CqeeFP4aArgwEALw_wcB&NONCE_TOKEN=3A9682E167597934A47B827CC52D6822")
        }
        
        if tagOfButton == 26
        {
            donateURL = URL(string:"https://secure.lcv.org/page/contribute/C4DFWBAPPL")
        }
        
        if tagOfButton == 27
        {
            donateURL = URL(string: "https://act.friendsoftheearth.uk/donate/make-donation")
        }
        
        if tagOfButton == 28
        {
            donateURL = URL(string: "https://www.habitat.org/donate/")
        }
        
        if tagOfButton == 29
        {
            donateURL = URL(string: "https://engage.us.greenpeace.org/onlineactions/BoeXh-fe4UCwP0Ey1CCK0w2")
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
