//
//  ViewController.swift
//  HelloWorld2
//
//  Created by Fritz Lim on 1/12/18.
//  Copyright © 2018 Fritz Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

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
    @IBAction func resetNameTextField(_ sender: UIButton) {
        nameTextField.text = ""
        helloThereLabel.text = "Hello there!"
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        <#code#>
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        <#code#>
    }
    
}

