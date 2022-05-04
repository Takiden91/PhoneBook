//
//  TableViewController.swift
//  PhoneBook
//
//  Created by mac on 01.05.2022.
//

import UIKit

class TableViewController: UITableViewController {


    private var storageName: [String] = []
    private var storageNumbers: [String:String] = [:]
    
    
    // MARK: - Table view data source

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }

    // MARK: Assingning a value to the cells
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "startVC", for: indexPath)
        
        let name: String = (firstName() + " " + secondName())
        let number = randomeNumber()
        cell.textLabel?.text = name
        
        storageName.insert(name, at: indexPath.row)
        storageNumbers[name] = number
    
        
        return cell
    }
    
    // MARK: Search of random values
    private func firstName() -> String {
        var firstName = randomChars().randomElement()?.uppercased() ?? ""
        let num = Int.random(in: 2...4)
        for _ in 0 ... num {
            let char = randomChars().randomElement() ?? ""
           firstName += char
        }
        return firstName
    }
    
    private func secondName() -> String {
        var secondName = randomChars().randomElement()?.uppercased() ?? ""
        let num = Int.random(in: 3...5)
        for _ in 0 ... num {
            let char = randomChars().randomElement() ?? ""
           secondName += char
        }
        return secondName
    }
    
    private func randomeNumber() -> String {
        var numberPhone: String = ""
        
        for _ in 0...7 {
            let randomInt = Int.random(in: 0...9)
            numberPhone += String(randomInt)
        }
        return numberPhone
    }
    
    // MARK: Arrey of letters
    private func randomChars() -> [String] {
        let abc = "qwertyuiopasdfghjklzxcvbnm"
        var arreyABC: [String] = []
        for i in abc{
            arreyABC.insert(String(i), at: 0)
        }
        return arreyABC
    }
    
    
       
    
    
    //     MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPathUser = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! ViewController
            detailVC.info = storageName[indexPathUser.row]
            detailVC.infoNumber = storageNumbers
        }
    }
  
}

    

