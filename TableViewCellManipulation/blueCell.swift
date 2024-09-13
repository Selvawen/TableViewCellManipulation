//
//  blueCell.swift
//  TableViewCellManipulation
//
//  Created by Ben Anderson on 9/10/24.
//

import Foundation
import UIKit

class blueCell: UITableViewCell {
    
    // UITextField for editing text inside the cell
    let textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter text"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    // Initializer for setting up the cell
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Set the background color for the blue cell
        self.backgroundColor = .blue
        
        // Add the text field to the content view
        contentView.addSubview(textField)
        
        // Set up constraints for the text field
        textField.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        textField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15).isActive = true
        textField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
