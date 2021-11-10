//
//  ContactViewController.swift
//  Persons List
//
//  Created by Kirill Guselnikov on 10.11.2021.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Persons!
    
    override func viewDidLoad() {

        super.viewDidLoad()
        navigationItem.title = person.nameValue
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
}
 
