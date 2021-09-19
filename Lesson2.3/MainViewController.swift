//
//  ViewController.swift
//  Lesson2.3
//
//  Created by Dubei Volodymyr on 19.09.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var minRange: UILabel!
    @IBOutlet var maxRange: UILabel!
    
    @IBOutlet var resultRandom: UILabel!
    
    @IBOutlet var getResultButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getResultButton.layer.cornerRadius = 10
      
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.minValue = minRange.text
        settingsVC.maxValue = maxRange.text
    }
    
    @IBAction func getResultAction() {
        let minimumValue = Int(minRange.text ?? "") ?? 0
        let maximumValue = Int(maxRange.text ?? "") ?? 100
        
        resultRandom.text = String(Int.random(in: minimumValue...maximumValue))
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingsViewController else { return }
        minRange.text = settingsVC.minRangeTF.text
        maxRange.text = settingsVC.maxRangeTF.text
    }
    
}

