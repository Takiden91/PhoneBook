//
//  SectionTableTableViewController.swift
//  PhoneBook
//
//  Created by mac on 05.05.2022.
//

import UIKit

class SectionTableTableViewController: UITableViewController {

    var persons = Person.createPerson()
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let person = persons[section]
        
        let myView = UIView()
        myView.backgroundColor = .gray
        
        let lable = UILabel(frame: CGRect(x: 20, y: 3, width: 300, height: 20))
        lable.text = person.name + " " + person.surname
        lable.textColor = .white
        
        myView.addSubview(lable)
        return myView
        
    }
    
    
    
    
    
    
    
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        let person = persons[section]
//        return person.name + " " + person.surname
//    }
    
    
    
    
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SectionView", for: indexPath)
        let person = persons[indexPath.section]
        cell.textLabel?.text = indexPath.row == 0 ? person.email : person.phoneNumber

        return cell
    }
    

}
