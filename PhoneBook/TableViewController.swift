//
//  TableViewController.swift
//  PhoneBook
//
//  Created by mac on 01.05.2022.
//

import UIKit

class TableViewController: UITableViewController {

    
    private var storageName = Person.createPerson()
   
    
    // MARK: - Table view data source

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    // MARK: Assingning a value to the cells
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "startVC", for: indexPath)
        
        let person = storageName[indexPath.row]
        cell.textLabel?.text = person.name + " " + person.surname
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    

    //     MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPathUser = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! ViewController
            detailVC.infoPerson = storageName[indexPathUser.row]
        }
    }
  
}

    

