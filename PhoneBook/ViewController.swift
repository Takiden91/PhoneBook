//
//  ViewController.swift
//  PhoneBook
//
//  Created by mac on 01.05.2022.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Portable data

    var infoPerson: Person?
    
    // Outlets
    @IBOutlet var nameLable: UILabel!
    @IBOutlet var emailLable: UILabel!
    @IBOutlet var phoneLableNew: UILabel!

    
   // Display info
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLable.text = (infoPerson?.name ?? "No Name") + " " + (infoPerson?.surname ?? "No surname")
        emailLable.text = infoPerson?.email ?? "No email"
        phoneLableNew.text = infoPerson?.phoneNumber ?? "No number"
    }
}
