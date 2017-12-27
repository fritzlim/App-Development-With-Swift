//
//  ViewController.swift
//  Hello World
//
//  Created by Fritz Lim on 12/14/17.
//  Copyright © 2017 Fritz Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var helloThereLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        helloThereLabel.text = textField.text
        //self.view.endEditing(true)
        //textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //helloThereLabel.text = nameTextField.text
    }
    
    //func textFieldDidBeginEditing(_ textField: UITextField) {
    //    textField.becomeFirstResponder()
    //}
    
    //MARK: Actions
    @IBAction func resetNameTextField(_ sender: UIButton) {
        helloThereLabel.text = "Hello there!"
        nameTextField.text = ""
        //nameTextField.becomeFirstResponder()
    }
}
