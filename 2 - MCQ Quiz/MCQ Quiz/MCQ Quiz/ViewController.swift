//
//  ViewController.swift
//  MCQ Quiz
//
//  Created by Fritz Lim on 12/31/17.
//  Copyright © 2017 Fritz Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var trueFalseOptions = ["True", "False"]
    
    //MARK: Properties
    @IBOutlet weak var tableView: UITableView!
    
    // Data model: These strings will be the data for the table view cells
//    let animals = ["Horse", "Cow", "Camel", "Sheep", "Goat"]

    //Cell reuse identifier from Main.storyboard
    let cellReuseIdentifier = "optionsCell"
    let cellSpacingHeight: CGFloat = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isScrollEnabled = false

        //Register the table view cell class and its reuse id.
        //This isn't needed if we create a prototype cell in
        //the storyboard.
//      self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
        // (optional) include this line if you want to remove the extra empty cell divider lines
        // self.tableView.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITableViewDataSource methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.trueFalseOptions.count
    }
    
    //Number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return self.trueFalseOptions.count
        return 1
    }
    
    //Create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Create a new cell if needed or reuse an old one
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)!
        
        //Set the cell's text
        //cell.textLabel?.text = self.trueFalseOptions[indexPath.row]
        
        //Note that since each row is in a section, we get the section's index number
        cell.textLabel?.text = self.trueFalseOptions[indexPath.section]
        
        //Add border and color
        cell.backgroundColor = UIColor.white
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        //cell.clipsToBounds = true
        
        //Return the cell
        return cell
    }
    
    //Set the spacing between sections
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }

    //Method that runs when a table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("You tapped "  + self.trueFalseOptions[indexPath.row] + ".")

        print("You tapped "  + self.trueFalseOptions[indexPath.section] + ".")

        let alert = UIAlertController(title: "Cell Tap Detected", message: "You tapped "  + //self.trueFalseOptions[indexPath.row] + ".", preferredStyle: UIAlertControllerStyle.alert)
            self.trueFalseOptions[indexPath.section] + ".", preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        self.present(alert, animated: false, completion: nil)
    }
}

