//
//  CategoriesController.swift
//  DonationApp
//
//  Created by Arnav Gupta on 8/6/18.
//  Copyright © 2018 NavAura. All rights reserved.
//

import Foundation
import UIKit

class CategoriesController: UITableViewController, UISearchResultsUpdating {
    
    @IBOutlet weak var categoriesTable: UITableView!
    
    var array = ["Animal Charities", "Environmental Charities", "Health Charities", "Education Charities"]
    
    var array2: [String]!
    
    var myIndex = 0
    
    var filteredArray = [String]()
    
    var searchController = UISearchController()
    
    var resultController = UITableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchController = UISearchController(searchResultsController: resultController)
        tableView.tableHeaderView = self.searchController.searchBar
        
        searchController.searchResultsUpdater = self
        
        resultController.tableView.delegate = self
        resultController.tableView.dataSource = self
        
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        
        filteredArray = array.filter({ (array: String) -> Bool in
        searchController.dimsBackgroundDuringPresentation = false

            
            if array.contains(searchController.searchBar.text!)
            {
                return true
            }
            else
            {
                return false
            }
        })
    //    resultController.tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        if tableView == resultController.tableView
        {
            return self.filteredArray.count
        }
        else
        {
            return self.array.count
        }
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    //    let cell = UITableViewCell()
        let imageCell = tableView.dequeueReusableCell(withIdentifier: "imageCell", for: indexPath) as! HeadlineTableViewCell
        
        
        let headline = array[indexPath.row]
        imageCell.labelView.text = headline
        imageCell.headlineImageView?.image = UIImage(named: headline)
        
        //imageCell.imageView?.image = UIImage(named: headline)
       // imageCell.textLabel?.textAlignment = .center

        
//        if tableView == resultController.tableView
//        {
//
//            cell.textLabel?.text = filteredArray[indexPath.row]
//        }
//        else
//        {
//            cell.textLabel?.text = array[indexPath.row]
//        }
        return imageCell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        let cell = tableView.cellForRow(at: indexPath as IndexPath)
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        
        if (myIndex == 0)
        {
            performSegue(withIdentifier: "toAnimalCharities", sender: self)
        }
        
        if (myIndex == 1)
        {
            performSegue(withIdentifier: "toEnvironmentCharities", sender: self)
        }
        
        if (myIndex == 2)
        {
            performSegue(withIdentifier: "toHealthCharities", sender: self)
        }
        
        if (myIndex == 3)
        {
            performSegue(withIdentifier: "toEducationCharities", sender: self)
        }
        
    }
    

    
    
    
}

class HeadlineTableViewCell: UITableViewCell {
    
    @IBOutlet weak var headlineImageView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    
}

