//
//  ViewController.swift
//  PhoneBook
//
//  Created by mac on 01.05.2022.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Portable data
    var info: String?
    var infoNumber: [String: String]?
    
    // Outlets
    @IBOutlet var nameLable: UILabel!
    @IBOutlet var emailLable: UILabel!
    @IBOutlet var phoneLableNew: UILabel!

    
   // Display info
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLable.text = info
        
        var email: String = ""
        
        for i in info! {
            if i != " " {
                email += i.lowercased()
                
            }
        }
        
        emailLable.text = email + "@mail.ruru"
        
        phoneLableNew.text = infoNumber![info!]
        
    }
    
    

}
