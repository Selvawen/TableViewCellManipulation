//
//  thisTableViewVC.swift
//  TableViewCellManipulation
//
//  Created by Ben Anderson on 9/10/24.
//

import Foundation
import UIKit

class thisTableViewVC: UITableViewController {
    
    // Data array to hold the rows (keeping track of types: red or blue)
    var rows: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register the custom cells
        tableView.register(redCell.self, forCellReuseIdentifier: "redCell")
        tableView.register(blueCell.self, forCellReuseIdentifier: "blueCell")
        
        // Set up navigation title
        title = "Table View Cell Manipulation"
        
        // Add editing mode to allow reordering
        tableView.isEditing = true
        
        // Set up the bottom buttons to add red or blue rows
        setupBottomMenu()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Check the type of row (red or blue)
        let rowType = rows[indexPath.row]
        
        if rowType == "Red" {
            let cell = tableView.dequeueReusableCell(withIdentifier: "redCell", for: indexPath) as! redCell
            cell.textField.text = "Red Cell \(indexPath.row + 1)"
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "blueCell", for: indexPath) as! blueCell
            cell.textField.text = "Blue Cell \(indexPath.row + 1)"
            return cell
        }
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        // Red cells are taller than blue cells
        let rowType = rows[indexPath.row]
        return rowType == "Red" ? 100 : 50
    }
    
    // Enable reordering
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedObject = rows[sourceIndexPath.row]
        rows.remove(at: sourceIndexPath.row)
        rows.insert(movedObject, at: destinationIndexPath.row)
    }
    
    // Enable swipe to delete rows
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            rows.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    // MARK: - Button actions
    
    @objc func addRedRow() {
        rows.append("Red")
        tableView.insertRows(at: [IndexPath(row: rows.count - 1, section: 0)], with: .automatic)
    }
    
    @objc func addBlueRow() {
        rows.append("Blue")
        tableView.insertRows(at: [IndexPath(row: rows.count - 1, section: 0)], with: .automatic)
    }
    
    // MARK: - Set up the bottom menu
    
    func setupBottomMenu() {
        let addRedButton = UIButton(type: .system)
        let addBlueButton = UIButton(type: .system)
        
        // Configure the buttons
        addRedButton.setTitle("Add Red Row", for: .normal)
        addRedButton.backgroundColor = .red
        addRedButton.tintColor = .white
        addRedButton.layer.cornerRadius = 10
        
        addBlueButton.setTitle("Add Blue Row", for: .normal)
        addBlueButton.backgroundColor = .blue
        addBlueButton.tintColor = .white
        addBlueButton.layer.cornerRadius = 10
        
        // Add button actions
        addRedButton.addTarget(self, action: #selector(addRedRow), for: .touchUpInside)
        addBlueButton.addTarget(self, action: #selector(addBlueRow), for: .touchUpInside)
        
        // Add buttons to a container view
        let stackView = UIStackView(arrangedSubviews: [addRedButton, addBlueButton])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        // Add the stack view to the table view's footer
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        footerView.addSubview(stackView)
        tableView.tableFooterView = footerView
        
        // Set up constraints for buttons
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: footerView.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: footerView.bottomAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: footerView.leadingAnchor, constant: 10).isActive = true
        stackView.trailingAnchor.constraint(equalTo: footerView.trailingAnchor, constant: -10).isActive = true
    }
}
