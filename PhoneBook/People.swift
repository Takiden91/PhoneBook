//
//  People.swift
//  PhoneBook
//
//  Created by mac on 05.05.2022.
//

import Foundation

struct Person {
    
    var name: String
    var surname: String
    var email: String
    var phoneNumber: String
    
    static func createPerson() -> [Person] {
        
        var people: [Person] = []
        
        let names = DataManager.chared.names.shuffled()
        let surnames = DataManager.chared.surnames.shuffled()
        let emails = DataManager.chared.emails.shuffled()
        let phones = DataManager.chared.phones.shuffled()
        
        for i in 0..<names.count {
            let person = Person(name: names[i],
                                surname: surnames[i],
                                email: emails[i],
                                phoneNumber: phones[i])
            people.append(person)
        }
        return people
    }
    
}
