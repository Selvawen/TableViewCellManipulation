# TableView Cell Manipulation

This project is an iOS application that demonstrates advanced manipulation of table view cells using **Programmatic UI** in Swift. It showcases custom cell types, dynamic row operations, and inline editing without the use of Storyboards or SwiftUI.

## Features

- **Custom Cells**: Two distinct cell types (`redCell` and `blueCell`) with different background colors and heights.
- **Reordering Rows**: Users can reorder table view rows by tapping and holding them.
- **Swipe to Delete**: Implemented swipe-to-delete functionality for rows.
- **Add New Rows**: A bottom menu with two buttons allows users to add new red or blue rows.
- **Inline Editing**: Users can tap on a cell to edit text within a `UITextField`.
- **Dismiss Keyboard**: Tapping outside the keyboard dismisses it, enhancing user experience.

## Files Included

- `thisTableViewVC.swift`: Main view controller handling the table view logic.
- `redCell.swift`: Custom table view cell class for red cells.
- `blueCell.swift`: Custom table view cell class for blue cells.

## Requirements

- iOS 13.0+
- Xcode 12.0+
- Swift 5.0+

## Installation

1. **Clone the Repository**
   ```bash
   git clone https://github.com/Insightful_Inc/Ben_TableViewCellManipulationExercise.git
   ```
2. **Navigate to the Project Directory**
   ```bash
   cd Ben_TableViewCellManipulationExercise
   ```
3. **Open the Project in Xcode**
   ```bash
   open TableViewCellManipulation.xcodeproj
   ```
4. **Build and Run**
   - Select a simulator or connect your iOS device.
   - Click the **Run** button in Xcode or press `Cmd + R`.

## Usage

- **Add Rows**
  - Use the "Add Red Row" or "Add Blue Row" buttons at the bottom to insert new rows.
  
- **Reorder Rows**
  - Tap and hold a row to move it to a new position.
  
- **Delete Rows**
  - Swipe left on a row to reveal the delete option.
  
- **Edit Text**
  - Tap on a cell's text field to edit its content.
  - Tap outside the keyboard area to dismiss the keyboard.

## Screenshot
![TableViewCellManipulation_Screenshot](https://github.com/user-attachments/assets/d78c64b6-7f13-4b1a-9d2e-681f37d881b6)
