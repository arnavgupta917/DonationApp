//
//  DonationTableViewController.swift
//  DonationApp
//
//  Created by Arnav Gupta on 8/8/18.
//  Copyright © 2018 NavAura. All rights reserved.
//

import Foundation
import UIKit

class DonationTableViewController: UITableViewController {
    
    var notes = [Note]() {
    didSet {
        tableView.reloadData()
    }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        notes = CoreDataHelper.retrieveNotes()
        let tempImageView = UIImageView(image: UIImage(named: "ombre.png"))
        tempImageView.frame = self.tableView.frame
        self.tableView.backgroundView = tempImageView;

    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor.white
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 1
        return notes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "donationTableViewCell", for: indexPath) as! DonationTableViewCell
        
        let note = notes[indexPath.row]
        cell.noteTitleLabel.text = note.title
        // 1
        cell.noteModificationTimeLabel.text = note.modificationTime?.convertToString() ?? "unknown"
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        switch identifier {
        case "displayNote":
            // 1
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            
            // 2
            let note = notes[indexPath.row]
            // 3
            let destination = segue.destination as! DisplayDonationViewController
            // 4
            destination.note = note
            
        case "addNote":
            print("create note bar button item tapped")
            
        default:
            print("unexpected segue identifier")
        }
        
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let noteToDelete = notes[indexPath.row]
            CoreDataHelper.delete(note: noteToDelete)
            
            notes = CoreDataHelper.retrieveNotes()
        }
    }
    
    @IBAction func unwindWithSegue(_ segue: UIStoryboardSegue) {
        notes = CoreDataHelper.retrieveNotes()

    }
   
    
    
}
