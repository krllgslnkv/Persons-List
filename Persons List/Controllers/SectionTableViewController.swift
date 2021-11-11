//
//  DetailedTableViewController.swift
//  Persons List
//
//  Created by Kirill Guselnikov on 10.11.2021.
//

import UIKit

class SectionTableViewController: UITableViewController {
    private let contactList = Persons.getContactList()
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView,
                            titleForHeaderInSection section: Int) -> String? {
        contactList[section].nameValue
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Section",
                                                 for: indexPath)
        
        let person = contactList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.image = UIImage(systemName: "phone")
            content.text = String(person.phone)
        default:
            content.image = UIImage(systemName: "tray")
            content.text = person.email
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
}
