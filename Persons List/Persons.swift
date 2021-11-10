//
//  Contact.swift
//  Persons List
//
//  Created by Kirill Guselnikov on 10.11.2021.
//


struct Persons {
    let name: String
    let surname: String
    let email: String
    let phone: Int
    
    var nameValue: String {
        "\(name) \(surname)"
    }
}
 
extension Persons {
    static func getContactList() -> [Persons] {
        var persons: [Persons] = []
        
        let names = DataManager.contacts.arrayNames.shuffled()
        let surnames = DataManager.contacts.arraySurnames.shuffled()
        let phones = DataManager.contacts.arrayPhones.shuffled()
        let emails = DataManager.contacts.arrayEmails.shuffled()
        
        for index in 0..<names.count {
            let person = Persons(name: names[index],
                                surname: surnames[index],
                                email: emails[index],
                                phone: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

