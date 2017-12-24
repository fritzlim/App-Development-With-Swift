//
//  ViewController.swift
//  Hello World
//
//  Created by Fritz Lim on 12/14/17.
//  Copyright © 2017 Fritz Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var helloThereLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    @IBAction func changeHelloThereLabel(_ sender: Any) {
        helloThereLabel.text = "Hey!"
    }
}

