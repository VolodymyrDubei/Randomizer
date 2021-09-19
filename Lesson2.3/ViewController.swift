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

    
    @IBAction func getResultAction() {
        let minValue = Int(minRange.text ?? "") ?? 0
        let maxValue = Int(maxRange.text ?? "") ?? 100
        
        resultRandom.text = String(Int.random(in: minValue...maxValue))
    }
    

}

