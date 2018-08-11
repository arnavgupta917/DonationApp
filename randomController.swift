//
//  randomController.swift
//  DonationApp
//
//  Created by Arnav Gupta on 8/9/18.
//  Copyright © 2018 NavAura. All rights reserved.
//

import Foundation
import UIKit

class randomController: UIViewController {
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var randomButton: UIButton!
    @IBOutlet weak var charityButton: UIButton!
    
    var donateURL: URL!
    
    
    let array = ["Global Giving", "Direct Relief", "OxFam", "Make A Wish", "Goodwill", "American Red Cross", "Home of Hope", "Save the Children", "The Salvation Army", "Habitat for Humanity", "Unicef", "Alley Cat Allies", "ASPCA", "Animal Rescue Foundation", "Friends of Animals", "PetSmart", "Best Friends", "Australian Wildlife Conservancy", "Canine Companions", "Amnesty International", "Educare India", "Autism Speaks", "American Cancer Society", "Caring Bridge"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "ombre.png")
        backgroundImage.contentMode = UIViewContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        charityButton.isEnabled = false
        charityButton.backgroundColor = UIColor.gray
        setUpViews()
    }
    
    func setUpViews() {
        randomButton.layer.cornerRadius = 8
        randomButton.layer.masksToBounds = true
        
        charityButton.layer.cornerRadius = 8
        charityButton.layer.masksToBounds = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func randomButtonTapped(_ sender: Any) {
        charityButton.isEnabled = true
        charityButton.backgroundColor = UIColor.magenta
        let maxIndex = UInt32(array.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        answerLabel.text = array[randomIndex]
        
        
    }
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
        let maxIndex = UInt32(array.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        answerLabel.text = array[randomIndex]
    }

    
    @IBAction func charityButtonTapped(_ sender: Any) {
        if (answerLabel.text == array[0]) {
            donateURL = URL(string:"https://www.globalgiving.org/dy/v2/checkout/billing/")
        }
        if (answerLabel.text == array[1]) {
             donateURL = URL(string:"https://secure.directrelief.org/site/Donation2;jsessionid=00000000.app260b?idb=1215695458&df_id=2924&mfc_pref=T&2924.donation=form1&NONCE_TOKEN=FCC177F3C1B518657FD726EBB8C6EEED&2924_donation=form1")
        }
        if (answerLabel.text == array[2]) {
             donateURL = URL(string:"https://secure2.oxfamamerica.org/page/contribute/donate")
        }
        if (answerLabel.text == array[3]) {
              donateURL = URL(string: "https://secure2.wish.org/site/SPageServer?pagename=donate_now&chid=100-000")
        }
        if (answerLabel.text == array[4]) {
            donateURL = URL(string: "https://sfgoodwill.org/donate/donate-money/?gclid=CjwKCAjwkYDbBRB6EiwAR0T_-iOBAsC-e0i-9qDmNYnFnH93CDtE7Qx59I3W-dMSkELz8HPei0OcsRoCkOQQAvD_BwE")
        }
        if (answerLabel.text == array[5]) {
            donateURL = URL(string:"https://www.redcross.org/donate/donation")

        }
        if (answerLabel.text == array[6]) {
            donateURL = URL(string:"http://www.hohinc.org/donate.html")

        }
        if (answerLabel.text == array[7]) {
            donateURL = URL(string: "https://support.savethechildren.org/site/Donation2?df_id=1620&1620.donation=form1")
        }
        if (answerLabel.text == array[8]) {
            donateURL = URL(string:"https://secure20.salvationarmy.org/donation.jsp")

        }
        if (answerLabel.text == array[9]) {
            donateURL = URL(string: "https://www.habitat.org/donate/")
        }
        if (answerLabel.text == array[10]) {
           donateURL = URL(string: "https://donate.unicefusa.org/page/contribute/help-save-childrens-lives-29161?ms=referral_dig_2018_misc_20180322_topnav_button_BSD_None&initialms=referral_dig_2018_mis&ms=ref_dig_2015_web_header_donate&_ga=2.225818066.915109111.1533424476-746299616.1533424476" )
        }
        if (answerLabel.text == array[11]) {
            donateURL = URL(string:"https://secure3.convio.net/alley/site/SPageServer?pagename=donatenow")
        }
        if (answerLabel.text == array[12]) {
            donateURL = URL(string:"https://secure.aspca.org/donate/ps-gn-20180713-p1?ms=MP_PMK_Googleawos-T4&initialms=MP_PMK_Googleawos-T4&pcode=WPSE9XXGOGN2PK00034&lpcode=WPSE9XXGOGN1PK00034&gclid=Cj0KCQjw45_bBRD_ARIsAJ6wUXQbAk8lk9zwcZtIf7FiDmDlSdEmQHwR5p7Zj7GR-f3FGbg9Y9L29C4aAgg2EALw_wcB&gclsrc=aw.ds&linked=1&skipParams=linked")
        }
        if (answerLabel.text == array[13]) {
            donateURL = URL(string: "https://secure3.convio.net/arf/site/Donation2;jsessionid=00000000.app317b?df_id=2620&2620.donation=form1&NONCE_TOKEN=DB794399230F7A94C7385857F7558F91")
        }
        if (answerLabel.text == array[14]) {
            donateURL = URL(string: "https://interland3.donorperfect.net/weblink/weblink.aspx?name=E344259&id=3")
        }
        if (answerLabel.text == array[15]) {
            donateURL = URL(string: "https://secure.petsmartcharities.org/site/Donation2?df_id=7467&7467.donation=form1")
        }
        if (answerLabel.text == array[16]) {
             donateURL = URL(string:"https://support.bestfriends.org/site/Donation2;jsessionid=00000000.app222b?df_id=1949&mfc_pref=T&1949.donation=form1&_ga=2.201640977.1806043055.1533581390-1955164352.1533581390&_gac=1.224942312.1533581390.Cj0KCQjw45_bBRD_ARIsAJ6wUXQFISXOffQ1CQGcWPoRwlB7F45Gi-YbBejlBtEwvdnd67g0CqeeFP4aArgwEALw_wcB&NONCE_TOKEN=839FD86E7BBBE25B79CCC23961193121")
        }
        if (answerLabel.text == array[17]) {
            donateURL = URL(string:"https://support.australianwildlife.org/")
        }
        if (answerLabel.text == array[18]) {
            donateURL = URL(string:"https://secure.cci.org/site/Donation2?df_id=2937&mfc_pref=T&2937.donation=form1")
        }
        if (answerLabel.text == array[19]) {
           donateURL = URL(string:"https://donate.amnestyusa.org/page/26346/donate/1?transaction.donationAmt=&ac=W18WEBDGEN2")
        }
        if (answerLabel.text == array[20]) {
            donateURL = URL(string: "http://www.educarecharity.org/donate")
        }
        if (answerLabel.text == array[21]) {
            donateURL = URL(string:"https://act.autismspeaks.org/site/Donation2?df_id=1500&mfc_pref=T&1500.donation=form1&utm_source=AdWords&utm_medium=search&utm_content=FAQ&utm_campaign=TR&s_src=AdWords&s_subsrc=TRFAQ&gclid=Cj0KCQjw45_bBRD_ARIsAJ6wUXT9BtFJNsWn-q0s_nMrcMNL036ybkucz4huQQhxgpWay4qF-MbxYIsaAmXXEALw_wcB")
        }
        if (answerLabel.text == array[22]) {
             donateURL = URL(string:"https://donate3.cancer.org/?sn=1&amount=100&campaign=search&utm_source=google&utm_medium=cpc&utm_campaign=%5BB%5D+American+Cancer+Society+%28Donate%29+-+BMM&utm_term=%2Bamerican%20%2Bcancer%20%2Bsociety%20%2Bdonate&utm_content=45y8kGwe_dc|pcrid|269294224545|pmt|b|pkw|%2Bamerican%20%2Bcancer%20%2Bsociety%20%2Bdonate|slid||pgrid|33476799561|ptaid|kwd-37208311742|&gclid=Cj0KCQjw45_bBRD_ARIsAJ6wUXToWlOrhJjdipsoxYeWRnQxwgqp6YPh-PWVrA0A8EbjkOQxYOxVYKkaAoUkEALw_wcB")
        }
        if (answerLabel.text == array[23]) {
            donateURL = URL(string: "https://www.caringbridge.org/give")

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
