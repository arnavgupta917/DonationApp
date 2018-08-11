//
//  animalCharities.swift
//  DonationApp
//
//  Created by Arnav Gupta on 8/6/18.
//  Copyright © 2018 NavAura. All rights reserved.
//

import Foundation
import UIKit

class animalCharities: UIViewController {
    
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
        if tagOfButton == 11
        {
            donateURL = URL(string:"https://secure3.convio.net/alley/site/SPageServer?pagename=donatenow")
        }
        
        if tagOfButton == 12
        {
            donateURL = URL(string:"https://secure.aspca.org/donate/ps-gn-20180713-p1?ms=MP_PMK_Googleawos-T4&initialms=MP_PMK_Googleawos-T4&pcode=WPSE9XXGOGN2PK00034&lpcode=WPSE9XXGOGN1PK00034&gclid=Cj0KCQjw45_bBRD_ARIsAJ6wUXQbAk8lk9zwcZtIf7FiDmDlSdEmQHwR5p7Zj7GR-f3FGbg9Y9L29C4aAgg2EALw_wcB&gclsrc=aw.ds&linked=1&skipParams=linked")
        }
        
        if tagOfButton == 13
        {
            donateURL = URL(string: "https://secure3.convio.net/arf/site/Donation2;jsessionid=00000000.app317b?df_id=2620&2620.donation=form1&NONCE_TOKEN=DB794399230F7A94C7385857F7558F91")
        }
        
        if tagOfButton == 14
        {
            donateURL = URL(string: "https://interland3.donorperfect.net/weblink/weblink.aspx?name=E344259&id=3")
        }
        
        if tagOfButton == 15
        {
            donateURL = URL(string: "https://secure.petsmartcharities.org/site/Donation2?df_id=7467&7467.donation=form1")
        }
        
        if tagOfButton == 16
        {
            donateURL = URL(string:"https://support.bestfriends.org/site/Donation2;jsessionid=00000000.app222b?df_id=1949&mfc_pref=T&1949.donation=form1&_ga=2.201640977.1806043055.1533581390-1955164352.1533581390&_gac=1.224942312.1533581390.Cj0KCQjw45_bBRD_ARIsAJ6wUXQFISXOffQ1CQGcWPoRwlB7F45Gi-YbBejlBtEwvdnd67g0CqeeFP4aArgwEALw_wcB&NONCE_TOKEN=839FD86E7BBBE25B79CCC23961193121")
        }
        
        if tagOfButton == 17
        {
            donateURL = URL(string:"https://support.australianwildlife.org/")
        }
        
        if tagOfButton == 18
        {
            donateURL = URL(string:"https://www.pawsweb.org/donate_online.html")
        }
        
        if tagOfButton == 19
        {
            donateURL = URL(string:"https://secure.cci.org/site/Donation2?df_id=2937&mfc_pref=T&2937.donation=form1")
        }
        
        if tagOfButton == 20
        {
            donateURL = URL(string:"https://www.gfi.org/donate")
        }
        
        if tagOfButton == 21
        {
            donateURL = URL(string: "https://donatenow.networkforgood.org/TheHumaneLeague/donate")
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


