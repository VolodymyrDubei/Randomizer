//
//  SettingsViewController.swift
//  Lesson2.3
//
//  Created by Dubei Volodymyr on 19.09.2021.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var minRangeTF: UITextField!
    @IBOutlet var maxRangeTF: UITextField!
    
    var minValue: String!
    var maxValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minRangeTF.text = minValue
        maxRangeTF.text = maxValue
    }
    

    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
    

}
