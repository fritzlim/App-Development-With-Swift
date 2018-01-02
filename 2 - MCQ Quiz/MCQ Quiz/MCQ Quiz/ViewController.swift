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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
//        self.tableView.isScrollEnabled = false
        
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
    
    //Number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.trueFalseOptions.count
    }
    
    //Create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Create a new cell if needed or reuse an old one
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)!
        
        //Set the cell's text
        cell.textLabel?.text = self.trueFalseOptions[indexPath.row]
        
        //Return the cell
        return cell
    }

    //Method that runs when a table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("You tapped cell number \(indexPath.row).")
        print("You tapped "  + self.trueFalseOptions[indexPath.row] + ".")
    }
}

